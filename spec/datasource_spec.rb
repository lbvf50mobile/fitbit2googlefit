require 'spec_helper'
require 'datasource'
TOKEN_VALUE = "GltJBQv3H8EY0iwgdrglKFwlxvW_MTwXpEeX1_sKLycMffW8jtPI1L-3hqGNwQZ2IvYOizFqYtjUWwYVmA5odK7XjT5urvjyZzfcrCaeY7PRnK0p2XeBI40X9AgQ"
describe "Datasource" do
    it "should create new data source" do
        @source = Datasource.new
        @source.set_tokey_value(TOKEN_VALUE)
        expect(@source.create("New name #{rand(1..10000)}").response.code).to eql("200")
    end
end

