def fullName(fname, lname)
    puts "Nome completo: #{fname} #{lname}"
end

fullName("Rodrigo", "Robson")



def somanumeros(num1, num2)
    return num1 + num2
end

puts somanumeros(10,20)

def adress(country="Brasil")
    puts "Eu moro no #{country}."
end

adress()

def ratingMovie(qtd_rating)
    puts "Informe o nome do filme:"
    movie_name = gets.chomp
    sum = 0
    for i in 1..qtd_rating
        puts "Digite a nota para o filme:"
        note = gets.chomp.to_f
        sum += note
    end
    puts "Média de avaliação do filme #{movie_name} é #{sum / qtd_rating}"
end

puts "Deseja fazer quantas avaliações?"
rating = gets.chomp.to_i

ratingMovie(rating)