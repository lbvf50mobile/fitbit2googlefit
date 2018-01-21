# here is my task is simple to save one element.
# and this is all need to rememeber that "perfect is the enemy for done"
# https://github.com/GoogleCloudPlatform/ruby-docs-samples/issues/119
require 'net/http'
require 'uri'


class Datasource
    attr_accessor :response
    def set_tokey_value key
        @key = key
    end
    def create name
        uri = URI.parse("https://www.googleapis.com/fitness/v1/users/me/dataSources")
        request = Net::HTTP::Post.new(uri)
        request.content_type = "application/json;encoding=utf-8"
        request["Authorization"] = "Bearer ya29.#{@key}"
        request.body = request_body(name)
        req_options = {
        use_ssl: uri.scheme == "https",
        }

        ans = Net::HTTP.start(uri.hostname, uri.port, req_options) do |http|
            http.request(request)
        end

        @response = ans.code
        self
    end
    def request_body name
        <<-TERMINATOR
        {
            "dataStreamName": "#{name}",
            "type": "derived",
            "application": {
              "detailsUrl": "http://example.com",
              "name": "Foo Example App",
              "version": "1"
            },
            "dataType": {
              "field": [
                {
                  "name": "steps",
                  "format": "integer"
                }
              ],
              "name": "com.google.step_count.delta"
            },
            "device": {
              "manufacturer": "Example Manufacturer",
              "model": "ExampleTablet",
              "type": "tablet",
              "uid": "1000001",
              "version": "1.0"
            }
          }
TERMINATOR
    end
end