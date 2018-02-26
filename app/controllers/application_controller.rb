class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :get_ip
  before_filter :get_language
  before_filter :global_page_elems
  before_filter :featured_article_slider
  before_filter :widget_session_check
  before_filter :allow_iframe_requests

  def get_ip
    params[:demo] = {} # needed a place to set this globaly

    # @ip = request.env["HTTP_X_FORWARDED_FOR"] # returns nil while remote_ip doesn't
    @ip = request.remote_ip
    # @ip = '207.238.45.3' # testing broken IP address Wylie gets in TX
    # @ip = '24.114.29.162' # testing Canada IP
p "==============ip address=============="
p @ip
p "==============ip address with HTTP X FORWARDED FOR=============="
p request.env["HTTP_X_FORWARDED_FOR"]
    if @ip.nil?
      # Salt Lake City, UT (single zee)
      # @ip = "64.147.131.201"
      # dayton, OH (testing multi zees)
      # @ip = "72.9.55.35"
    end
    return @ip
  end

  def get_language
    if request.env['HTTP_ACCEPT_LANGUAGE']
      geomatic_language = request.env['HTTP_ACCEPT_LANGUAGE'].scan(/^[a-z]{2}/).first
    else
      geomatic_language = APP_CONFIG['defaults']['language']
    end
    I18n.locale = geomatic_language
  end

  def global_page_elems
    @geolocation = Geomatic.get_city_state(@ip)
p '++++++++++++++GEO LOCATION++++++++++++++'
p @geolocation
    # # AD HOC fix
    # # if country == Canada, redirect to housemaster.ca
    # if @geolocation['country_iso_code'] == 'CA'
    #   redirect_to 'http://housemaster.ca'
    # end
  end

  def zee_sidebar
    @zee_articles = Resource.get_articles([2,3,4])
  end

  def featured_article_slider
    @article_slider_articles = Resource.get_articles([1,6,12])
  end

  def resource_keywords
    # Keywords dropdown section on article list pages
    @keywords = []
    @article_list.each do |article| # cycle through each article to grab all keywords
      k = article['seo_keywords'].split(',') # each keyword (phrase) split into array
      k.each do |word|
        if !@keywords.include? word # If keywords doesn't already have this, let's add
          @keywords << word.strip # Add word (without leading/trailing whitespace)
        end
      end
    end
  end

  def article_keywords
    # Keywords dropdown section on article list pages
    @keywords = []
    @article_list.each do |article| # cycle through each article to grab all keywords
      k = article["tags"].map{|t| t["name"].downcase} # add keywords from 'tags', split into array
      k.push(article["keywords"].map{|t| t["name"].downcase}.join(',')) # add keywords from 'keywords' to k
      k.each do |word|
        if !@keywords.include? word # If keywords doesn't already have this, let's add
          @keywords << word.strip # Add word (without leading/trailing whitespace)
        end
      end
    end
  end

  def widget_session_check
    if session[:widget] && ( session[:widget_expire] && session[:widget_expire] >= 60.minutes.ago.to_s )
      @widget_session_check = true
      @geo_zees = session[:widget]
      zee_sidebar()
    else
      @widget_session_check = nil
    end
  end

  def allow_iframe_requests
    # allows iframe testing in development
    # http://stackoverflow.com/a/17862331/1180523
    response.headers.delete('X-Frame-Options')
  end
end
