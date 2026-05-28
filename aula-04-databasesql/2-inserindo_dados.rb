require 'pg'

conn = PG.connect(
  dbname: 'aularuby',
  user: 'postgres',
  password: '133766',
  host: 'localhost',
  port: 5432
)

#2 - Adicionando dados com array

registros = [
  {name: 'The Last of Us', year: 2023, score: 9.6},
  {name: 'Spiderman 2', year: 2023, score: 9.2}
]

registros.each do |registros|
  name = registros[:name]
  year = registros[:year]
  score = registros[:score]


  insert_query = "INSERT INTO JOGO(name, year, score) VALUES ('#{name}', #{year}, #{score})"

  conn.exec(insert_query)
end


puts "Registros inseridos com sucesso."
conn.close