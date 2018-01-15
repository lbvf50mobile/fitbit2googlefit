require_relative 'lib/csvreader'
# get stat about the file
file_path = "csv/fitbit_data_test_short.csv";
csv = Csvreader.new(file_path);
p csv.stat
