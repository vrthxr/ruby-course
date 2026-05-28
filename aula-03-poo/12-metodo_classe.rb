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

  # Método de classe para calcular o preço com desconto

  def self.discounted_price(price, discounted_percentage)
    price -= (price * (discounted_percentage.to_f / 100))
  end
end


game3 = Game.new("A Way Out", "Ação", false, [], 30)
puts game3
puts game3.tech_sheet
puts Game.discounted_price(game3.price, 20)