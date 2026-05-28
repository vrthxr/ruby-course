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
    def to_s
      "#{@name}-#{@genre}-#{@multiplayer}-#{@versions}"
    end

    def name
        @name
    end

    def genre
        @genre
    end

    def multiplayer
        @multiplayer
    end

    def versions
        @versions
    end

    def price
        @price
    end
end

game = Game.new
puts game.genre, game.multiplayer, game.name