#1 - this check of string that starts with "hello" and ends with "world"
strings = ["Hello World!", "Hello OBC!", "ruby is fun. Hello world!"]


strings.each do |string|
  if string =~ /\AHello.*World!\z/
    puts "#{string} is the pattern."
  else
    puts "#{string} isnt the pattern."
  end
end

#2 - check if string starts with ruby and ends with 3.2

strings2 = ["ruby-3.2", "ruby-2.0", "ruby-3.0 is powerful"]
strings2.each do |string2|
  if string2 =~ /^ruby.*3\.2$/
    puts "#{string2} - is the pattern"
  else
    puts "#{string2} - isnt the pattern"
  end
end
