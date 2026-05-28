class Game
  def initialize
    puts "Novo objeto de jogo foi criado"
    # Variavel de instancia
    @name = "Pes"
    @genre = "Sports"
    @multiplayer = true
    @versions = [2018,2019,2020]
    @price = 100
  end

  def information
    puts "O jogo é do gênero #{@genre} e as versões: #{@versions}"
  end

  def tech_sheet
    puts "####DADOS DO JOGO####"
    puts "O nome do jogo é: #{@name}"
    puts "O jogo é do gênero: #{@genre}"
    puts "O jogo custa: #{@price} reais."
  end


end

game = Game.new
puts game.information
puts game.tech_sheet