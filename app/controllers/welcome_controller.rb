class WelcomeController < ApplicationController
  # layout :resolve_layout
  layout 'home'
  before_filter :zee_sidebar, :only => [:get_zees]

  def index
    @home_header = Resource.get_articles([8,9,10])
    @image_slider_articles = Resource.get_articles([5,11])
  end

  def request_inspection
    # save form submission (and return errors if any)
    request = RequestInspection.new({
      "name" => params[:name],
      "phone" => params[:phone],
      "email" => params[:email],
      "zip_code" => (params[:zip_code]) ? params[:zip_code] : @geolocation['postal']
    })

    # if errors with saving, return errors else continue
    if request.save
      # if zee results show multiple and user selected one, use that else default to first
      i = (session[:widget]['selected']) ? session[:widget]['selected'].to_i : 0
      frannum = (session[:widget]['zees'][i]['franchisee_number']) ? session[:widget]['zees'][i]['franchisee_number'] : '009999' # default to 009999 if no zee number exists for zee widget

      # default from email = request@housemaster.com
      from = "#{APP_CONFIG['forms']['request_inspection']['from']}"
      # default to email = hminfo@housemaster.com
      to = "#{APP_CONFIG['forms']['request_inspection']['to']}"
      # default bcc = hminfo@housemaster.com, it+housemaster@sopraservices.com
      bcc = "#{APP_CONFIG['forms']['request_inspection']['bcc']}"

      # get the current franchisee email from widget session if zee is in area
      if session[:widget]['zees'][i]['email']
        # to becomese zee's email
        to = session[:widget]['zees'][i]['email']
      end

      # send email message to zee
      NotificationsMailer.inspection_request({
        "from" => from,
        "to" => to,
        "bcc" => bcc,
        "name" => request.name,
        "email" => request.email,
        "zip_code" => request.zip_code,
        "phone" => request.phone
      }).deliver

      # then send thank you email to customer
      to = request.email
      # default from email = request@housemaster.com
      from = "#{APP_CONFIG['forms']['request_inspection']['from']}"

      # send email message to zee
      NotificationsMailer.request_inspection_thanks({
        "from" => from,
        "to" => to
      }).deliver

      # return success json with thank you message (which will replace form with 'thanks!')
      render :json => {:success => "Thanks! Your request has been sent. We look forward to serving you real soon."}.to_json, :status => 200
    else
      # wasn't able to save request, send error
      render :json => {:error => "An unknown error has occurred, please try again later."}.to_json, :status => 400
    end
  end

  def newsletter
    # email newsletter subscribe form submit
    # if zee results show multiple and user selected one, use that else default to first
    i = (session[:widget]['selected']) ? session[:widget]['selected'].to_i : 0
    # need to pass the following data over
    data = Newsletter.new({
      "first_name" => params[:first_name],
      "last_name" => params[:last_name],
      "email" => params[:email],
      "frannum" => (session[:widget]['zees'][i]['franchisee_number']) ? session[:widget]['zees'][i]['franchisee_number'] : '009999', # default to 009999 if no zee number exists for zee widget
      "source" => 'hmwebsite', # where this newsletter subscription came from
      "zip" => (@geolocation['postal']) ? @geolocation['postal'] : ''
    })

    # if errors with saving, return errors else continue
    if data.save
      # api call requires this format
      data = {:data => data.to_json}
      p 'sending request to NJ servers'
      response = ApiCall.post(APP_CONFIG['forms']['newsletter'], data)
      body = JSON.parse(response.body)
      # p 'response.code'
      # p response.code
      # p 'JSON.parse(response.body)'
      # p body
      if response.code == "200" || response.code == "400"
        render :json => body.to_json, :status => response.code
      end
    else
      # return saving error
      render :json => {:error => data.errors.full_messages.to_sentence}.to_json, :status => 400
    end
  end
  
  def multi_zee_selected
    if session[:widget] && params['selected']
      session[:widget]['selected'] = params['selected'].to_i
      render :json => {:success => 'selected franchise owner set'}.to_json, :status => 200
    else
      render :json => {:error => 'unable to select a franchise owner'}.to_json, :status => 400
    end
  end

  def get_zees
    # AJAX calls here to get franchisee territory info for this area from Inertia API
    # if session widget data already set and not expired, use that
    if !params['reset'] && @widget_session_check
      session[:widget_expire] = Time.current.to_s
      render :html => get_zee_html(session[:widget])
    elsif params['city'].empty? || params['state'].empty?
      # no need to ping API, just return "no one in your area"
      session[:widget] = {}
      session[:widget_expire] = Time.current.to_s
      render :html => get_zee_html(session[:widget])
    else
      session[:widget] = nil
      session[:widget_expire] = nil
      call = ApiCall.get("#{APP_CONFIG['inertia']['url']}/api/v1/get_zees?city=#{params['city']}&state=#{params['state']}", "#{APP_CONFIG['inertia']['user_key']}:#{APP_CONFIG['inertia']['account_key']}")
      body = JSON.parse(call.body)
      if call.code == "200"
        # Include city/zip in response
        response = {
          'zees' => []
        }
        if body.count > 0
          body.each do |r|
            response['zees'] << r
          end
        end
        response['location'] = {
          'city' => params['city'].gsub(/\w+/, &:capitalize),
          'state' => params['state'].upcase
        }
        # render :json => response.to_json, :status => 200
        session[:widget] = response
        # see raw results from Inertia
        if Rails.env == 'development'
          p '~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~'
          p session[:widget]
          p '~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~'
        end
        session[:widget_expire] = Time.current.to_s
        render :html => get_zee_html(session[:widget])
      else
        render :json => {:error => 'Unable to query territories'}.to_json, :status => 400
      end
    end
  end

  def switch_zees
    # AJAX calls here to switch city/state and then 
    # search for franchisee territory info
    query_string = "location=#{params['location']}"
    # TODO, make sure we validate that location param not only returns city/state, 
    #       but also confirms that city/state exist
    call = ApiCall.get("#{APP_CONFIG['inertia']['url']}/api/v1/valid_location_check?#{query_string}", "#{APP_CONFIG['inertia']['user_key']}:#{APP_CONFIG['inertia']['account_key']}")
    body = JSON.parse(call.body)
    if call.code == "200" || call.code == "400"
      render :json => body.to_json, :status => call.code
    else
      render :json => {:error => 'Unable to search for location'}.to_json, :status => 400
    end
  end

  def request_inspection_links
    target = "" # will only change if ISN link found
    footer_css_class = "footer-nav__btn"
    widget_css_class = "btn accordion-nav owner-contact__schedule--btn"
    # determin default link, class and onclick based on if this is home page or not
    if params['page'] == root_path
      link = "#{root_path(:anchor => 'request_inspection')}"
      top_css_class = "collapse-mobile word-wrap"
    else
      link = '#request-inspection'
      top_css_class = "collapse-mobile accordion-nav word-wrap"
      onclick = "accordionTrigger(this)"
    end
    if @geo_zees
      if @geo_zees['zees'].count == 1
        # if there is only 1 zee, that becomes selected
        # if current/selected zee has isn_link, us that, else use default
        if @geo_zees['zees'][0]['links'].has_key?('isn_url')
          link = @geo_zees['zees'][0]['links']['isn_url']
          target = "_blank"
          onclick = ""
        end
      elsif @geo_zees['zees'].count > 1 && @geo_zees['selected']
        # if multiple zees and one is already selected
        # if one zee is selected and has isn_link, update to that
        if @geo_zees['zees'][@geo_zees['selected']]['links'].has_key?('isn_url')
          link = @geo_zees['zees'][@geo_zees['selected']]['links']['isn_url']
          target = "_blank"
          onclick = ""
        end
      end
    end

    render :json => {
      "top_link" => "<a class='#{top_css_class}' href='#{link}' target='#{target}' onclick='#{onclick}'>REQUEST <br />INSPECTION</a>".html_safe,
      "footer_link" => "<a class='#{footer_css_class}' href='#{link}' target='#{target}' onclick='#{onclick}'>REQUEST AN APPOINTMENT</a>".html_safe,
      "multi_widget_link" => "<a class='#{widget_css_class}' href='#{link}' target='#{target}' onclick='#{onclick}'>REQUEST AN INSPECTION</a>".html_safe
    }.to_json, :status => 200
  end

  private

  def get_zee_html(zees)
    @current_page = params['page']
    @geo_zees = zees
    # generate/return the zee sidenav html content
    return render_to_string( :partial => "_shared/widget/load_content", :layout => false ).html_safe
  end

  # Need way to easily change layout used for specific actions
  # http://stackoverflow.com/a/3025806/1180523
  def resolve_layout
    case action_name
    when "index"
      "home"
    else
      "application"
    end
  end

end
