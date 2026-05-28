class Game
  puts "Novo objeto de jogo foi criado: #{self}"
  
  # attr_reader :name, :genre, :price #apenas leitura
  # attr_writer :name, :genre, :price #apenas escrita
  attr_accessor :name, :genre, :price #ambos  
  attr_reader :multiplayer, :version

  def initialize
    # Variavel de instancia 
    @name = "Pes"
    @genre = "Sports"
    @multiplayer = true
    @versions = [2018,2019,2020]
    @price = 100
  end
    def to_s
      "#{@name}-#{@genre}-#{@multiplayer}-#{@versions}"
    end
end

game = Game.new
p game.name
p game.genre
p game.price
game.name = "Resident Evil"
p game.name
game.genre = "Terror"
p game.genre
game.price = "150"