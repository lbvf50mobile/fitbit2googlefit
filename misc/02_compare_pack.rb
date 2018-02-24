require 'benchmark'
require "csv"
require 'msgpack'
# get stat about the file


csv = nil
dump = nil
csv_restored = nil
msg = nil
restored = nil

file_path = "csv/fitbit_data.csv";

p "CSV UNPACK - 1 000 000 lines per 3 columns (each column is a date)"
puts Benchmark.measure {
   csv = CSV.read(file_path)
}



p "Marshal PACK"
puts Benchmark.measure {
   dump = Marshal.dump(csv)
}

p "Marshal UNPACK"
puts Benchmark.measure {
    
    csv_restored =  Marshal::load(dump)
}

p "MessagePack Pack"
puts Benchmark.measure {
   msg = csv.to_msgpack
}

p "MessagePack UNPACK"
puts Benchmark.measure {
    restored = MessagePack.unpack(msg)
}



p "csv == csv_restored is %s " %  (csv == csv_restored).inspect
p "csv_restored == restored is %s " %  (csv_restored == restored).inspect
