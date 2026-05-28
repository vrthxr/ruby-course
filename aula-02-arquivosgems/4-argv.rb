#1 utilizando argumentos

ARGV.each { |arg| puts arg }
ARGV.each { |arg| puts arg.class }

#2 - potencia do numero

ARGV.each do |arg|
    pot = arg.to_i ** 2
    puts "Potência do número #{arg} é #{pot}"
end

#3 - salvando conteudo de argumento em arquivos

File.open("data/games.txt", "a") do |file|
    ARGV.each do |game|
        file.puts game
    end
end