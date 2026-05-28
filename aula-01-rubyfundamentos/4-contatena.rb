puts"Informe o nome do filme:"
name = gets.chomp

puts "Informe o ano do filme:"
yearLaunch = gets.chomp.to_i

puts "Informe o preço do filme:"
price = gets.chomp.to_f

# 1 - puts normal
# puts "Nome do filme: " + name
# puts "Ano de lançamento: " + yearLaunch.to_s
# puts "Preço do filme:" + price.to_s

# 2 - utilizando o #
# puts "Nome do filme: #{name}"
# puts "Ano de lançamento: #{yearLaunch}"
# puts "Preço do filme: #{price}"

# 3 - único puts
# puts "nome do filme: #{name},\nano de lançamento: #{yearLaunch}, \npreço do filme: #{price}"

# 4- string multilinha
puts <<~MULTILINE_STRING
                Nome do filme:#{name},
                Ano de lançamento:#{yearLaunch},
                Preço do filme:#{price}
MULTILINE_STRING