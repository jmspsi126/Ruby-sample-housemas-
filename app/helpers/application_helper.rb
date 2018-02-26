module ApplicationHelper
  def determine_header_request_inspection_link
    # some logic duplicated in welcome_controller#request_inspection_links
    target = "" # will only change if ISN link found
    # determin default link, class and onclick based on if this is home page or not
    if current_page?(root_path)
      link = "#{root_path(:anchor => 'request_inspection')}"
      css_class = "collapse-mobile word-wrap"
      onclick = ""
    else
      link = '#request-inspection'
      css_class = "collapse-mobile accordion-nav word-wrap"
      onclick = "accordionTrigger(this)"
    end
    if @geo_zees
      if @geo_zees['zees'].count == 1
        # if there is only 1 zee, that becomes selected
        # if current/selected zee has isn_link, us that, else use default
        if @geo_zees['zees'][0]['links'].has_key?('isn_url')
          link = @geo_zees['zees'][0]['links']['isn_url']
          target = "_blank"
        end
      elsif @geo_zees['zees'].count > 1 && @geo_zees['selected']
        # if multiple zees and one is already selected
        # if one zee is selected and has isn_link, update to that
        if @geo_zees['zees'][@geo_zees['selected']]['links'].has_key?('isn_url')
          link = @geo_zees['zees'][@geo_zees['selected']]['links']['isn_url']
          target = "_blank"
        end
      end
    end

    return {
      :link => link,
      :target => target,
      :css_class => css_class,
      :onclick => onclick
    }
  end

  def determine_footer_request_inspection_link
    # some logic duplicated in welcome_controller#request_inspection_links
    target = "" # will only change if ISN link found
    css_class = "footer-nav__btn"
    # determin default link, class and onclick based on if this is home page or not
    if current_page?(root_path)
      link = "#{root_path(:anchor => 'request_inspection')}"
      onclick = ""
    else
      link = '#request-inspection'
      onclick = "accordionTrigger(this)"
    end
    if @geo_zees
      if @geo_zees['zees'].count == 1
        # if there is only 1 zee, that becomes selected
        # if current/selected zee has isn_link, us that, else use default
        if @geo_zees['zees'][0]['links'].has_key?('isn_url')
          link = @geo_zees['zees'][0]['links']['isn_url']
          target = "_blank"
        end
      elsif @geo_zees['zees'].count > 1 && @geo_zees['selected']
        # if multiple zees and one is already selected
        # if one zee is selected and has isn_link, update to that
        if @geo_zees['zees'][@geo_zees['selected']]['links'].has_key?('isn_url')
          link = @geo_zees['zees'][@geo_zees['selected']]['links']['isn_url']
          target = "_blank"
        end
      end
    end

    return {
      :link => link,
      :target => target,
      :css_class => css_class,
      :onclick => onclick
    }
  end

  def determine_widget_request_inspection_link
    # logic duplicated in welcome_controller#request_inspection_links
    target = "" # will only change if ISN link found
    css_class = "btn accordion-nav owner-contact__schedule--btn"
    # determin default link, class and onclick based on if this is home page or not
    if @current_page == root_path
      link = "#{root_path(:anchor => 'request_inspection')}"
      onclick = ""
    else
      link = '#request-inspection'
      onclick = "accordionTrigger(this)"
    end
    if @geo_zees
      if @geo_zees['zees'].count == 1
        # if there is only 1 zee, that becomes selected
        # if current/selected zee has isn_link, us that, else use default
        if @geo_zees['zees'][0]['links'].has_key?('isn_url')
          link = @geo_zees['zees'][0]['links']['isn_url']
          target = "_blank"
        end
      elsif @geo_zees['zees'].count > 1 && @geo_zees['selected']
        # if multiple zees and one is already selected
        # if one zee is selected and has isn_link, update to that
        if @geo_zees['zees'][@geo_zees['selected']]['links'].has_key?('isn_url')
          link = @geo_zees['zees'][@geo_zees['selected']]['links']['isn_url']
          target = "_blank"
        end
      end
    end

    return {
      :link => link,
      :target => target,
      :css_class => css_class,
      :onclick => onclick
    }
  end

  def determine_header(slide)
    if slide['header_image'] # if this is a resources article
      image = slide['header_image'] # get header image here
    else # else this is from Skyword
      # get image if any, else blank it
      image = (!slide['article_images'].empty?) ? slide['article_images'][0]['media_object'] : ''
    end
    # p image
    return image
  end

  def determine_article_image(slide)
    if slide['article_image'] # if this is a resources article
      image = slide['header_image'] # get header image here
    else # else this is from Skyword
      # get image if any, else blank it
      image = (!slide['article_images'].empty?) ? slide['article_images'][0]['media_object'] : nil
    end
    # p image
    return image
  end

  def determine_keywords(slide)
    if slide['seo_keywords'] # if this is a resources article
      seo_keywords = slide['seo_keywords'] # get seo_keywords
    else # else this is from Skyword
      seo_keywords = []
      k = slide["tags"].map{|t| t["name"].downcase} # add keywords from 'tags', split into array
      k.push(slide["keywords"].map{|t| t["name"].downcase}.join(',')) # add keywords from 'keywords' to k
      k.each do |word|
        if !seo_keywords.include? word # If keywords doesn't already have this, let's add
          seo_keywords << word.strip # Add word (without leading/trailing whitespace)
        end
      end
      seo_keywords = seo_keywords.join(',')
    end
    return seo_keywords
  end

  def determine_author_image(slide)
    image = "" # default for now
    if slide['author_image'] # if resource article
      image = slide['author_image'] # if set, use this image
    elsif slide['contributor']['image'] # else is a Skyword article
      image = slide['contributor']['image'] # if set, use this image
    end
    return image
  end

  def determine_author_name(slide)
    name = "HouseMaster" # default for now
    if slide['author'] # if resource article
      name = slide['author'] # if set, use this author
    elsif slide['contributor']['name'] # else is a Skyword article
      name = slide['contributor']['name'] # if set, use this author
    end
    return name
  end

  def format_publish_date(slide, length=nil)
    if length.nil?
      date = "#{DateTime.parse(slide['published_date'].to_s).strftime("%b %d, %Y")}" # i.e. Jan 02, 2015
    elsif length == 'long'
      date = "#{DateTime.parse(slide['published_date'].to_s).strftime("%B %d, %Y")}" # i.e. January 02, 2015
    end
    return date
  end

  def find_zee_image(zeenum)
    require "net/http"
    image = "#{APP_CONFIG['aws']['base_url']}/#{APP_CONFIG['aws']['bucket']}/zees/#{zeenum}.jpg"

    # check if this url exists
    uri = URI.parse("#{URI.encode(image)}")
    http = Net::HTTP.new(uri.host, uri.port)
    http.use_ssl = (uri.scheme == "https")
    response = http.request_head(uri.path)
    if response.code != "200"
      # image url doesn't exist
      image = ""
    end
    return image
  end
end
