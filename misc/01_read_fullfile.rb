require 'benchmark'
require "csv"
# get stat about the file

p Dir.pwd
csv = nil
dump = nil
bin = nil
csv_restored = nil

file_path = "csv/fitbit_data.csv";

p "Read full file with 1 million of lines"
puts Benchmark.measure {
   csv = CSV.read(file_path)
}

p "class of csv %s" % csv.class.inspect

p "Dump the csv"
puts Benchmark.measure {
   dump = Marshal.dump(csv)
}


# 
# Write file with binary
p "Write dump"
puts Benchmark.measure {
    File.open('bin/full_bib.dump', 'wb') { |f| f.write(Marshal.dump(dump)) }
}

# Read file
# Marshal.load()
p "REad file from Bin and Restore"
puts Benchmark.measure {
    File.open('bin/full_bib.dump', 'rb') { |f| csv_restored = Marshal::load(f) }
}


p csv.size
p csv_restored.size
p csv[4]
p csv_restored.size[4]

