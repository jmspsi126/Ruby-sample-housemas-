class ApiCall
  require "net/http"
  require "uri"

  def self.get(url, apikey=nil)
    p "GET"
    p url

    uri = URI.parse("#{URI.encode(url)}")
    http = Net::HTTP.new(uri.host, uri.port)
    http.use_ssl = (uri.scheme == "https")
    request = Net::HTTP::Get.new(uri.request_uri)
    # Set authorization in header
    if !apikey.nil?
      request["Authorization"] = "Token token=#{apikey}" #The sneaky authentication bit
    end

    return http.request(request)
  end

  def self.post(url, data, body=nil, apikey=nil)
    p "POST"
    p url

    uri = URI.parse("#{URI.encode(url)}")
    http = Net::HTTP.new(uri.host,uri.port)
    http.use_ssl = (uri.scheme == "https")
    if body.nil? || body == 'form'
      p 'form request'
      # posting form data
      request = Net::HTTP::Post.new(uri.request_uri)
      request.set_form_data(data)
    elsif !body.nil? && body == 'raw'
      p 'raw request'
      # posting raw body data (typically json)
      request = Net::HTTP::Post.new(uri.request_uri, initheader = {'Content-Type' =>'application/json'})
      request.body = data
    end
    # Set authorization in header
    if !apikey.nil?
      request["Authorization"] = "Token token=#{apikey}" #The sneaky authentication bit
    end

    return http.request(request)
  end

  def self.put(url, data, body=nil, apikey=nil)
    p "PUT"
    p url

    uri = URI.parse("#{URI.encode(url)}")
    http = Net::HTTP.new(uri.host, uri.port)
    http.use_ssl = (uri.scheme == "https")
    if body.nil? || body == 'form'
      # posting form data
      request = Net::HTTP::Put.new(uri.request_uri)
      request.set_form_data(data)
    elsif !body.nil? && body == 'raw'
      # putting raw body data (typically json)
      request = Net::HTTP::Put.new(uri.request_uri, initheader = {'Content-Type' =>'application/json'})
      request.body = data
    end
    # Set authorization in header
    if !apikey.nil?
      request["Authorization"] = "Token token=#{apikey}" #The sneaky authentication bit
    end

    return http.request(request)
  end

  def self.delete(url, apikey=nil)
    p "DELETE"
    p url

    uri = URI.parse("#{URI.encode(url)}")
    http = Net::HTTP.new(uri.host, uri.port)
    http.use_ssl = (uri.scheme == "https")
    request = Net::HTTP::Delete.new(uri.request_uri)
    # Set authorization in header
    if !apikey.nil?
      request["Authorization"] = "Token token=#{apikey}" #The sneaky authentication bit
    end

    return http.request(request)
  end

end
