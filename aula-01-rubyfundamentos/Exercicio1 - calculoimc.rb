puts "Digite o peso:"
weight = gets.chomp.to_f

puts "Digite a altura:"
height = gets.chomp.to_f

height = height *= height

imccalc = weight / height

puts "Seu IMC é: #{imccalc}"