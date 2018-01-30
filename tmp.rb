require 'open-uri'
str = "derived:com.google.step_count.delta:407408718192:test:01:03:Created from oAuthPlayground".force_encoding('ASCII-8BIT')
puts URI::encode(str)