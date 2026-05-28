#1 - alternativa 1
# File.open("data/courses.txt", "w") do |file|
#     file.puts "Criando arquivo de texto"
#     file.write "Hello World"
#     file.puts "Olá mundo"
#     file.puts "Curso de React Native"
#     file.puts "React JS"
# end

#2 - alternativa 2
File.open("data/course.txt", "a") do |file|
    puts "Qual curso deseja fazer?"
    course = gets.chomp
    file.puts course
end
