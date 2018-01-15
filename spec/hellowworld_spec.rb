require 'hellowworld'

describe "Hellow world" do
    it "shoud answer on hi" do
        expect(HellowWorld.new.hi).to eq("Hello world!")
    end
end
