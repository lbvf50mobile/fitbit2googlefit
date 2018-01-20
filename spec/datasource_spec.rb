require 'spec_helper'
require 'datasource'

describe "Datasource" do
    it "should create new data source" do
        @source = Datasource.new
        @source.set_key("GltIBUaAmhYZ8aedTROW0xFG0CqK7BL8dvce-ekzLF8HoJ9N3H9tjPXx2y-CAhJTxDJq3o8tR3mZYY7C-QZT0uSQa67EIIbtJse4hFXOpwWQ9wuIDO5DubtbnKce")
        expect(@source.create("New name").response).to be 200
    end
end