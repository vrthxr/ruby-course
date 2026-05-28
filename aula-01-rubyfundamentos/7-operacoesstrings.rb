name = "de volta para o futuro"
description = "O filme trata de uma viagem no tempo"
description2 = <<Text
            O filme #{name} é um clássico
            de 1985 sobre viagem no tempo
Text


#1- indexação

puts description[0]
puts description[-1]
puts description[0,4]       #com , é exclusivo
puts description[0..4]      #com .. é inclusivo, coloca o 4 valor
puts description.slice(0)
puts description.slice(0,4)


#2- quebrando uma string

print description.split()
print description.split("uma")

#3- quebrando em caracteres

print description.chars

#4- contagem de caracteres

puts description.count("a")

#5- maiusculo e minusculo

puts description.upcase
puts description.downcase
puts description.capitalize
puts description.swapcase
puts description.chop

#6- verificação de um indice

puts description.index("viagem")

#7- alterar palavras

puts description.gsub("tempo", "espaço")

#8- outras operaçoes

puts "ruby".center(20, "-")
puts "=" * 20
puts description.include?("filme")
puts "              ruby".lstrip
puts "ruby             ".rstrip
puts "        ruby        ".strip