require 'spec_helper'
require 'csvreader'

describe "Csvreader" do
    before(:all) do
        @csv = Csvreader.new("fitbit_data.csv")
    end
    it "should open file and return 2 dimentional array" do
        
        expect(@csv.arr).to be_an_instance_of(Array)
    end
    it "should return stat answering on stat method" do
        stat = @csv.stat
        expect(stat).to be_an_instance_of(Hash)
        expect(stat.keys.include?(:rows_amount)).to be true
        expect(stat.keys.include?(:rows_zero_amount)).to be true
        expect(stat.keys.include?(:rows_steps_amount)).to be true
    end
end
