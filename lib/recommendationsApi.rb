require 'net/http'
require 'IO/console'

module Cognitive
  module Recommendations
    class Client
      def initialize(subscription_key, region)
        @base_url="https://#{region}.api.cognitive.microsoft.com/recommendations/v4.0"
        @subscription_key=subscription_key
      end

      def upload_catalog(model_id, catalog_display_name, catalog_path)
        uri = URI("#{@base_url}/models/#{model_id}/catalog?catalogDisplayName=#{catalog_display_name}")
        request = Net::HTTP::Post.new(uri.request_uri)
        request['Content-Type'] = 'application/octet-stream'
        request['Ocp-Apim-Subscription-Key'] = "#{@subscription_key}"
        request.body = IO.binread(catalog_path)

        response = Net::HTTP.start(uri.host, uri.port, :use_ssl => uri.scheme == 'https') do |http|
          http.request(request)
        end
        return response.body
      end
    end
  end
end
