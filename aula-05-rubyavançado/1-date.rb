require 'date'

puts Date.new(1994)
puts Date.new(1994, 1)
puts Date.new(1994, 1, 18)


birthday = Date.new(1994, 1, 18)
puts birthday.class
puts birthday.year
puts birthday.month
puts birthday.day

# data.wday 0 domingo ~ 6 - sab
