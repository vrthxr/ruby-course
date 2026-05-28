#1 - 1 alternativa
movies = File.open("data/filmes.txt")
puts movies
puts movies.class

movies.each{ |line| puts line}

#2 - 2 alternativa

file_path = "data/filmes.txt"

File.open(file_path, "r") do |file|
    file.each_line { |line| puts line.strip unless line.strip.empty? }
end