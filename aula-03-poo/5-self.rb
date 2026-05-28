# a palavra chave self no contexto do código fornecido 
# refere-se a instancia atual da classe Game.
# ela pode ser usada para se referir a metodos ou variaveis de instância.

class Game
                        puts "Novo objeto de jogo foi criado: #{self}"
  def initialize
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
  
  def to_s
    "#{@name}-#{@genre}-#{@multiplayer}-#{@versions}"
  end

  def details
    puts "Detalhes do jogo: #{self}"
  end

end

game = Game.new
puts game.details