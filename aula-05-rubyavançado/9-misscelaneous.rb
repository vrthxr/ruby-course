#characters deletion using regular expressions

# strings = ["apple", "cd", "cherry", "dt", "grape", "fig"]

# strings.each do |string|
#   if string =~ /^[^aeiou]+$/
#     puts "#{string} has only consonants."
#     else
#       puts "#{string} has vowels or other characters."
#     end
# end

#example of use sub - gsub to replace parts of a string

string2 = "the ruby language is easy to learn and ruby is fun."
new_string_sub = string2.sub(/ruby/, 'python')
new_string_gsub = string2.gsub(/ruby/, 'python')

puts "using sub:"
puts "original string: #{string2}"
puts "string with sub: #{new_string_sub}"
puts "string with gsub: #{new_string_gsub}"