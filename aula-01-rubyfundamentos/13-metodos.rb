def hello
    puts "Hello World"
end

# hello()

def sum()
    puts 5 + 4
end

# sum()


def create_movie
    puts "Digite o nome do filme:"
    name = gets.chomp
    puts "Digite o ano de lançamento do filme:"
    yearLaunch = gets.chomp.to_i
    puts "Digite o preço do filme:"
    moviePrice = gets.chomp.to_f

    puts "O nome do filme é #{name} e ele custa R$#{moviePrice}"
end

create_movie()
create_movie()