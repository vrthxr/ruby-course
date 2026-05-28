require 'csv'


# 1 - Escrevendo dados em CSV

CSV.open("data/example.csv", "w") do |csv|
    csv << ["Nome", "Idade", "Cidade"]
    csv << ["Alice", 25, "São Paulo"]
    csv << ["Bob", 38, "Rio de Janeiro"]
    csv << ["Carol", 21, "Curitiba"]
end

# 2 - Lendo dados em CSV

CSV.foreach("data/example.csv", headers:true) do |row|
    nome = row["Nome"]
    idade = row["Idade"]
    cidade = row["Cidade"]
    puts "Nome: #{nome} Idade: #{idade} Cidade: #{cidade}"
end