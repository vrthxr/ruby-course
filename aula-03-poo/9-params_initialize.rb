class Game
  puts "Novo objeto de jogo foi criado: #{self}"
  
  attr_accessor :name, :genre, :price 
  attr_reader :multiplayer, :version

  def initialize(name, genre, multiplayer, versions, price)
    # Variavel de instancia 
    @name = name
    @genre = genre
    @multiplayer = multiplayer
    @versions = versions
    @price = price
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