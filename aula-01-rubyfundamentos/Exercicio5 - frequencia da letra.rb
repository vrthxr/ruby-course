puts "Digite a frase:"
phrase = gets.chomp

frequency = Hash.new(0)
phrase.each_char do |character|
frequency[character] +=1
end

puts "Frequencia dos caracteres:"
frequency.each do |word, qtd|
    puts "#{word} aparece #{qtd}"
end
