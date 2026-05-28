class Game
  puts "Novo objeto de jogo foi criado: #{self}"
  
  attr_accessor :name, :genre, :price 
  attr_reader :multiplayer, :version

  #Váriavel de classe para rastrear o número de jogos

  @@num_jogos = 0

  def initialize(name, genre, multiplayer, versions, price)
    # Variavel de instancia 
    @name = name
    @genre = genre
    @multiplayer = multiplayer
    @versions = versions
    @price = price

    # Incrementando o contador de jogos ao adicionar um novo jogo
    @@num_jogos += 1
  
end

  def to_s
      "#{@name}-#{@genre}-#{@multiplayer}-#{@versions}"
  end

  def tech_sheet
    puts "####DADOS DO JOGO####"
    puts "O nome do jogo é: #{@name}"
    puts "O jogo é do gênero: #{@genre}"
    puts "O jogo custa: #{@price} reais."
  end

  def self.total_games #método para obter numero total de jogos
    @@num_jogos
  end


end


game1 = Game.new("Fifa", "Esporte", true, [2018,2019,2020], 150)
puts game1
puts game1.tech_sheet

game2 = Game.new("COD", "Tiro", true, [], 280)
puts game2
puts game2.tech_sheet

game3 = Game.new("A Way Out", "Ação", false, [], 80)
puts game3
puts game3.tech_sheet

puts "Número total de jogos: #{Game.total_games}"