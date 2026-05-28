  require 'pg'


  #1 - Configurações de conexão BD

  conn = PG.connect(
    dbname: 'aularuby',
    user: 'postgres',
    password: '133766',
    host: 'localhost',
    port: 5432
  )


  query = 'SELECT * FROM jogo'

begin
    result = conn.exec(query)
    #itera as linhas do resultado
    result.each do |row|
      puts "ID: #{row['id']} - Nome: #{row['name']} - Ano: #{row['year']} - Score: #{row['score']}"
    end
  ensure
    conn.close if conn
end