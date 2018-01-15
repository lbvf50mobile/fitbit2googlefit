require "csv"
class Csvreader
    attr_reader :arr
    def initialize(path)
        @arr = CSV.read(path)
    end
    def stat
        {rows_amount: 0, rows_zero_amount: 0, rows_steps_amount: 0}
    end
end
