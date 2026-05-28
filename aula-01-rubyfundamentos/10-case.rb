puts "Informe a idade:"
age = gets.chomp.to_i

case age    
    when 0..2
        puts "Ele é um bebê"
    when 3..6
        puts "Ele é uma criança"
    when 7..12
        puts "Ele é um pré-adolescente"
    when 13..18
        puts "Ele é um adolescente"
    else
        puts "Adulto"
end