#alternativa 1 - for

# for i in 1..5
#     puts i
# end

# alternativa 2 - each

# (1..5).each do |i|
#     puts i
# end

movies_list = ["O Máscara", "Homem Aranha", "Batman", "Super Mario"]

#1-iterando valores de um array

movies_list.each do |movie|
    puts movie
end

#2 - utilizando o break

movies_list.each do |movie|
    break if movie == "Homem Aranha"
    puts movie
end

#3 - utilizando o next
movies_list.each do |movie|
    next if movie == "Homem Aranha"
    puts movie
end

#4- Avaliação

puts "Digite o nome do filme:"
movie_name = gets.chomp
puts "Digite quantas avaliações deseja fazer:"
movie_rating = gets.chomp.to_i

sum = 0
movie_rating.times do 
    puts "Digite a nota para o filme:"
    note = gets.chomp.to_f
    sum += note 
end

average = sum / movie_rating   

puts "Média de avaliação do filme #{movie_name} é %.2f" %average