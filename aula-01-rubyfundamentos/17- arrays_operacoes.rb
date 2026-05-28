movies = ["Homem Aranha", "Super Mario Bros", "O Máscara"]

# 1 - indexação e atribuição

puts movies[0] # primeiro filme
puts movies[-1] #ultimo filme
puts movies[1,2] #2 e 3 filme pois inicia em 0

movies[2] = "Top Gun Maverick"
puts movies

movies << "Avatar"
puts movies


#2 - metodos uteis


puts movies.length
puts movies.first
puts movies.last


movies.append("Procurando o Nemo")
puts movies

puts movies.sort()

puts movies.shuffle()


#recuperando o indice e o valor

movies.each_with_index{|value, index| puts "#{index} - #{value}"}

