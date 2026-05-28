soma = lambda {|num1, num2| num1 + num2}
div = lambda {|num1, num2| num1 / num2}
subt = lambda {|num1 , num2| num1 - num2}
mult = lambda {|num1 , num2| num1 * num2}

def operation(function)
    puts "Digite o número 1:"
    num1 = gets.chomp.to_i
    puts "Digite o número 2:"
    num2 = gets.chomp.to_i
    result = function.call(num1,num2)
    puts "Resultado = #{result}"
end

begin
    puts "Calculadora"
    puts "a - Soma"
    puts "b - Subtração"
    puts "c - Divisão"
    puts "d - Multiplicação"
    puts "q - Fechar calculadora"
    choice = gets.chomp

case choice
    when "a" then operation soma
    when "b" then operation subt
    when "c" then operation div
    when "d" then operation mult
end

end while choice != "q"




