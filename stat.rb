require_relative 'lib/csvreader'
require 'benchmark'
# get stat about the file
file_path = "csv/fitbit_data_test_short.csv";
csv = Csvreader.new(file_path)
stat = csv.stat
p "Flie name %s" % file_path
p "Total rows: %s" % stat[:rows_amount]
p "Zero rows: %d, %d%" % [stat[:rows_zero_amount], (stat[:rows_zero_amount]/stat[:rows_amount].to_f)*100]
p "Steps rows: %d, %d%" % [stat[:rows_steps_amount], (stat[:rows_steps_amount]/stat[:rows_amount].to_f)*100]