#1 - blocos
# trechos anonimos de codigo que aceitam entradas de argumentos e retornam determinado valor

def hello
    yield
end

hello {puts "Hello World"}
hello {puts "Hello World2"}
hello {puts "Hello World3"}

def one_two_three
    yield 1
    yield 2
    yield 3
end

one_two_three  {|number| puts number * 10}

#2 - função de potência de um número
power = lambda { |num| num ** 2}
puts power.call(4)

#3 função que verifica se o numero é par
pair = lambda {|x| x % 2 == 0}
puts pair.call(8)

#4 função que divide um número por outro

div1 = lambda {|x , y| x / y}
puts div1.call(10,5)