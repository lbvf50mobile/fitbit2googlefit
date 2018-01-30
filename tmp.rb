require 'open-uri'
require 'date'
str = "derived:com.google.step_count.delta:407408718192:Example Manufacturer:ExampleTablet:1000001:SupperTest22205".force_encoding('ASCII-8BIT')
puts URI::encode(str)
p  DateTime.now.strftime('%Q').to_s.length
p "1397515179728708316".length
p  DateTime.now.strftime('%Q').to_s + ("0"*6)