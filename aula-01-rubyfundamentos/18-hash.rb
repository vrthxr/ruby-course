#1 - criando hash
mov = Hash.new
puts mov.class

movies = {"name" => "Avatar", "year" => 2023}
puts movies

movies2 = {:name => "Super Mario Bros", :year => 2028}
puts movies2

#2 - iterando valores do hash (for,while,each)

puts movies2.keys
puts movies2.values

for key, value in movies2
    puts "#{key} - #{value}"
end

i = 0 

while i < movies2.length
    puts "#{movies2.keys[i]} - #{movies2.values[i]}"
    i += 1
end

movies2.each {|key, value| puts "#{key} - #{value}"}

