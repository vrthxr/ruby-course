puts "Escreva o primeiro nome"
firstname = gets.chomp

puts "Escreva o segundo nome"
secondname= gets.chomp

puts "Escreva a organização"
org = gets.chomp

email = "#{firstname}.#{secondname}@#{org}.com"

generate = <<Text
Seu endereço de email foi gerado!
#{email}
Text

puts generate

#forma que o cara da videoaula fez, 
#a minha continua parecendo mais simples porém a dele tem a parte do downcase e do . em nomes compostos

email = ""
email << firstname.downcase.split.join(".")
email << "."
email << secondname.downcase.split.join(".")
email << "@"
email << org.downcase.split.join
email << ".com"

puts email