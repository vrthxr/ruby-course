#1- diretório atual
puts Dir.pwd
# #2- criando diretório
Dir.mkdir "teste"

# #3- lista arquivos e pastas

puts Dir.glob "*"

# #4 - lista arquivos especificos

puts Dir.glob "*.rb"

# #5 - navegando entre diretórios

Dir.chdir "data"
puts Dir.pwd

Dir.chdir "exercicio2"
puts Dir.pwd
File.open("exercicio2ruby.rb", "w")
