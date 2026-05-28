#using scan method to find all occurrences of a pattern on a string
string = "ruby is powerful and versatile. ruby is fun to learn."
pattern = /ruby/

results = string.scan(pattern)

puts "the pattern 'ruby' was found #{results.length} times on this string."
puts "the occurrences found were: #{results.join(',')}"

#extracting all digits from string with scan

string2 = "openai launch gpt-3 in 2020, and gpt-4 in 2022"
numbers = string2.scan(/\d+/) #\d will extract numbers in a string

puts "the numbers found in the string were: #{numbers.join(',')}"