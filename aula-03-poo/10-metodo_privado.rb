#método privado
#só podem ser chamados a partir da mesma classe onde foram definidos

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
  
  #Método Privado

  private
  
  def apply_discount(discount_percentage)
    @price -= (@price * discount_percentage / 100)
  end

  #Método Público que chama o método privado
  public

  def apply_10_percent_discount
    apply_discount(10)
  end

end

game1 = Game.new("Alan wake", "Suspense", false, [], 150)
p game1.price
game1.apply_10_percent_discount
p game1.price
