require 'spec_helper'
require 'datasource'
TOKEN_VALUE = "GltJBUFpINTuqdmrJE0JMNmj6YyWe6_SHmGC579xfLnjoc1aZlN8XV4lJ61zSUwV8L5T4Yhwu6wJ1qQ09X1CuzXU4SWrkOje_83SSgL7Alro9m2J3NdLwe1hqQyi"
describe "Datasource" do
    it "should create new data source" do
        @source = Datasource.new
        @source.set_tokey_value(TOKEN_VALUE)
        expect(@source.create("New name").response.code).to eql(200)
    end
end

