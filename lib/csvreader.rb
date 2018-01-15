require "csv"
class Csvreader
    attr_reader :arr
    def initialize(path)
        @arr = CSV.read(path)
    end
    def stat
        # cut headera
        data = @arr[1..-1]
        # get stat
        stat = data.reduce({rows_amount: 0, rows_zero_amount: 0, rows_steps_amount: 0}) do |sum,n|
            sum[:rows_amount] += 1
            sum[:rows_zero_amount] += 1 if n[2].eql?(0)
            sum[:rows_steps_amount] += 1 if !n[2].eql?(0)
            sum
        end
        stat
    end
end
