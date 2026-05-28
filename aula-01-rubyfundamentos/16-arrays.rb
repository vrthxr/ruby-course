movies = []
puts movies.class

movies2 = Array.new
puts movies2.class

movies_test = ["Homem Aranha", "Super Mario Bros"]
puts movies_test

two_movies = Array.new(5,"De volta para o Futuro")
puts two_movies

#2 - utilizando exponenciação

numbers = Array.new(5) {|x| x ** 2}
puts numbers

#3 array de numeros

num = Array.[](1,2,3)
puts num

num2 = Array(1..5)
puts num2

#4 - arrays com multiplos valores

movie = ["Homem Aranha", 1984, 50.00, true]
puts movie

#5 - iterando itens (for,while,each)

for mov in movies_test
    puts mov
end

i = 0 
while i < movies_test.length
    puts movies_test[i]
    i += 1
end

movies_test.each {|a| puts a}