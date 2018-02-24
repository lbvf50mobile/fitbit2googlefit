require 'spec_helper'
require "csv"

describe "Just serialize" do
    before(:all) do
        @csv = CSV.read("csv/fitbit_tiny.csv")
        @arr = [["Start Time", "End Time", "steps"], ["1451628000", "1451628059", "0"]]
        @dump_path = 'bin/full_tiny.dump'
    end
    it "CSV should return array" do
        p @csv
        expect(@csv).to be_an_instance_of(Array)
    end
    it "csv should be equal to array" do
        expect(@csv).to eq(@arr)
    end

    it "csv after binary serialize/deserialize should be valid" do
        serialize = Marshal.dump(@csv)
        restored = Marshal::load(serialize)
        expect(restored).to eq (@arr)
    end

    it "serrialize save load restore shuld be equal to arr" do
        serialize = Marshal.dump(@csv)
        restored = nil
        File.open(@dump_path, 'wb') { |f| f.write(Marshal.dump(serialize)) }
        File.open(@dump_path, 'rb') { |f| restored = Marshal::load(f) }
        p @arr
        p restored
        expect(restored).to eq (@arr)
    end
end
