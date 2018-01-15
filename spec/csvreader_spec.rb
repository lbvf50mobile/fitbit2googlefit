require 'spec_helper'
require 'csvreader'

describe "Csvreader" do
    before(:all) do
        @csv = Csvreader.new("csv/fitbit_data_test_short.csv")
        @stat = @csv.stat
    end
    it "should open file and return 2 dimentional array" do
        
        expect(@csv.arr).to be_an_instance_of(Array)
    end
    it "should return stat answering on stat method" do
        expect(@stat).to be_an_instance_of(Hash)
        expect(@stat.keys.include?(:rows_amount)).to be true
        expect(@stat.keys.include?(:rows_zero_amount)).to be true
        expect(@stat.keys.include?(:rows_steps_amount)).to be true
    end
    it "amount of rows could no be zero" do
        expect(@stat[:rows_amount]).not_to be_zero
    end
end
