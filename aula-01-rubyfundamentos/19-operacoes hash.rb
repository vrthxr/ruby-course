movie = {:name => "Super Mario Bros", :year => 2023}
puts movie

#1 - metodos uteis

puts movie.size
puts movie.length
puts movie.to_a
puts movie.min
puts movie.max
puts movie.fetch(:name)

#2 - Adiciona um novo item

movie.store(:genre, "Aventura")
movie.store(:rating, 5.0)

puts movie

#3- exclui uma chave

movie.delete(:rating)
puts movie

#4 - limpar itens do hash

movie.clear()
puts movie