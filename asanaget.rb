require "./inc/config.rb"

class AsanaGet
  def initialize (uri_string)
    uri = URI.parse(uri_string)
    http = Net::HTTP.new(uri.host, uri.port)
    http.use_ssl = true
    http.verify_mode = OpenSSL::SSL::VERIFY_PEER

    # set up the request
    header = {
      "Content-Type" => "application/json"
    }

    req = Net::HTTP::Get.new(uri.path, header)
    req.basic_auth(BaseConfig::Api_key, '')
    @res = http.start { |http| http.request(req) }
  end
  
  def get_response
    @res
  end
end