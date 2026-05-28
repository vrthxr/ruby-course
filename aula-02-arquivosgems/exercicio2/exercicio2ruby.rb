require 'csv'

caminho_csv = "exercicio2/contatos.csv"
new_csv = !File.exist?(caminho_csv)

CSV.open(caminho_csv, "a") do |csv|
    if new_csv
        csv << ["Nome", "Idade", "Cidade"]
    end
end

CSV.open(caminho_csv, "a") do |csv|
    puts "Digite o nome:"
    nome = gets.chomp
    puts "Digite a idade:"
    idade = gets.chomp.to_i
    puts "Digite a cidade"
    cidade = gets.chomp
    csv << [nome, idade, cidade]
end

CSV.foreach(caminho_csv, headers:true) do |row|
    nome = row ["Nome"]
    idade = row ["Idade"]
    cidade = row ["Cidade"]
    puts "Nome: #{nome} Idade: #{idade} Cidade: #{cidade}"
end

