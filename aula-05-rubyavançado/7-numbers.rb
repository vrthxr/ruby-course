#1 - /\d+/ - one or more digits between 0 and 9
#can find any continuous digit sequence

#2 - /-?\d+/ - optional hifen 

string = "the temperature in the room is 25°C and the price is R$19.99"
full_numbers = string.scan(/-?\d+/)
decimal_numbers = string.scan(/-?\d+\.\d+/)

puts "all full numbers found: #{full_numbers.join(',')}"
puts "all decimal numbers found: #{decimal_numbers.join(',')}"

#exctracting and adding all full numbers on the string with scan

string2 = "i have 3 apples 2 oranges and 5 bananas on my basket"
numbers = string2.scan(/\d+/).map(&:to_i)
sum = numbers.sum
puts "the numbers found were: #{numbers.join(',')}"
puts "the sum of all the numbers is: #{sum}"