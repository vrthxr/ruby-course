require 'pg'

conn = PG.connect(
  dbname: 'aularuby',
  user: 'postgres',
  password: '133766',
  host: 'localhost',
  port: 5432
)


puts "Digite o id do registro que você deseja deletar"
id_registro = 
gets.chomp.to_i

delete_query = "DELETE from jogo WHERE id = #{id_registro}"

conn.exec(delete_query)

puts "Registro excluido com sucesso."