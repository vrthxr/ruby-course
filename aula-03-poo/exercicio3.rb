class Veiculo
  
  attr_reader :placa, :marca 

  def initialize(placa, marca)
    @placa = placa
    @marca = marca
    puts "Um novo veículo foi criado."
  end

  def to_s
    "#{@placa}-#{@marca}"
  end

  def details
    puts "Detalhes do veículo"
    puts "A placa do veículo é: #{@placa}"
    puts "A marca do veículo é: #{@marca}"
  end

end


class Carro < Veiculo
  attr_reader :portas
  def initialize (placa, marca, portas)
    super(placa,marca)
    @portas = portas
  end

  def details
    super
    puts "O veículo tem #{portas} portas."
  end
end

class Moto < Veiculo
  attr_reader :cilindradas
  def initialize (placa, marca, cilindradas)
    super(placa,marca)
    @cilindradas = cilindradas
  end


  def details
    super
    puts "O veículo tem #{cilindradas} cilindradas."
  end

end

def showdetails(veiculo)
  veiculo.details
end

carro = Carro.new("ZXD-8063", "Nissan", 4)
moto = Moto.new("BCX-3821", "Yamaha", 450)

showdetails(carro)
showdetails(moto)


