puts "Digite o nome do filme:"
name = gets.chomp

puts "Digite o ano do filme:"
yearLaunch = gets.chomp.to_i

puts "Digite a nota do filme:"
classification = gets.chomp.to_f

if classification > 8.0 and yearLaunch > 2015
    puts "O filme #{name} é bom! Recomendo assistir."
else
    puts "O filme #{name} ainda não atingiu uma boa nota."
end