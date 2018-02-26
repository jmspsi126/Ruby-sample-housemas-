class BbpController < ApplicationController
  layout = 'bbp'

  def index
    @subscriber = params["sE"]
    @account = params["sU"]
    @list = params["sId"]

    p params["subscribe"]
    if params["subscribe"] == "yes"
      submit(@subscriber, @account, @list)
    end
  end

  def success
  end

  def error
  end

  def submit(subscriber, account, list)
    uri = URI.parse("http://housemaster.us11.list-manage.com/profile/post")

    http = Net::HTTP.new(uri.host, uri.port)

    request = Net::HTTP::Post.new(uri.request_uri)
    request.set_form_data({"e" => subscriber, "u" => account, "id" => list, "MERGE3" => "yes"})

    response = http.request(request)
    if response.code == "200"
      redirect_to bbp_success_path
    else
      redirect_to bbp_error_path
    end
  end
end
