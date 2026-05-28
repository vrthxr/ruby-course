#série de fibonacci

puts "Digite um número para fazer sua sequência de fibonacci:"
number = gets.chomp.to_i

fib = 1
fibprev = 0

while fib <= number
    puts fib
    # temp = fib
    # fib += fibprev
    # fibprev = temp
    fibprev, fib = fib, fib+fibprev
end

