puts Math.class 
p Math.methods.sort
puts Math.sqrt(5)
puts Math.sin(90)
puts Math::PI


#1 - Cálculo area de um círculo

def calcular_area(raio)
    return Math::PI * raio **2
end


#1 - Perímetro de um círculo

def calcular_perimetro(raio)
    return 2 * Math::PI * raio
end

#3 - Entrada de dados

puts "Digite o raio do círculo"
raio = gets.chomp.to_f


#4 - Execução da função

area = calcular_area(raio)
perimetro = calcular_perimetro(raio)

#5 - exibindo resultados

puts "Area do círculo com raio #{raio} é #{area.round(2)}"
puts "Perímetro do círculo com raio #{raio} é #{perimetro.round(2)}"

