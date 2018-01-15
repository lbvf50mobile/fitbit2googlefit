require 'spec_helper'
require 'csvreader'

describe "Csvreader" do
    it "should open file and return 2 dimentional array" do
        csv = Csvreader.new("fitbit_data.csv")
        expect(csv.arr).to be_an_instance_of(Array)
    end
end
