require 'pg'

conn = PG.connect(
  dbname: 'aularuby',
  user: 'postgres',
  password: '133766',
  host: 'localhost',
  port: 5432
)

puts "type registry id"
id_registro =
gets.chomp.to_i
#1 - Novos valores para o jogo
puts "type name"
new_name = 
gets.chomp
puts "type year"
new_year =
gets.chomp.to_i
puts "type score"
new_score = 
gets.chomp.to_i


#2 - Instrução SQL atualização

update_query = "UPDATE jogo SET name = '#{new_name}', year = #{new_year}, score = #{new_score} WHERE id = #{id_registro}" 

conn.exec(update_query)

puts "O jogo foi atualizado com sucesso."

conn.close