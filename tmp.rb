class MyError < StandardError
    attr_reader :original
    def initialize(msg, original=$!)
        super(msg)
        @original = original
    end
end

begin
   begin
        raise "Error A"
   rescue => error
        raise MyError, "Error B"
   end 
rescue => error
    p "Current failure: #{error.inspect}"
    p "Original failure: #{error.original.inspect}"
end