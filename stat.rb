require_relative 'lib/csvreader'
require 'benchmark'
# get stat about the file
file_path = "csv/fitbit_data.csv";
p "Flie name %s" % file_path

csv = 0
stat = 0
p "Read file:"
puts Benchmark.measure {csv = Csvreader.new(file_path)}
p "Get stat:"
puts Benchmark.measure {stat = csv.stat}

p "Total rows: %s" % stat[:rows_amount]
p "Zero rows: %d, %d%" % [stat[:rows_zero_amount], (stat[:rows_zero_amount]/stat[:rows_amount].to_f)*100]
p "Steps rows: %d, %d%" % [stat[:rows_steps_amount], (stat[:rows_steps_amount]/stat[:rows_amount].to_f)*100]