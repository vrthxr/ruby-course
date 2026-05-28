puts"Digite o primeiro numero:"
num1 = gets.chomp.to_i

puts"Digite o segundo número:"
num2 = gets.chomp.to_i


# 1- operadores aritméticos

sum = num1 + num2
subt = num1 - num2
div = num1 / num2
mult = num1 * num2
mod = num1 % num2
exp = num1 ** num2

# puts sum,subt,div,mult

# 2-operadores de atribuição    

num1 += 1 #num1 = num1 + 1
num1 -= 1
num1 /= 1
num1 *= 1

# 3- atribuiçao paralela

a, b = 5, 4
a, b = b, a 

# puts a,b

# 4 - operadores de comparação 

bigger = num1 > num2
smaller = num1 < num2
equal = num1 == num2
different = num1 != num2
bigger_equal = num1 >= num2
smaller_equal = num1 <= num2

#5 - operadores lógicos

puts ((2> 4) and (3 > 1))
puts ((2> 4) or (3 > 1))

#6 - operadores especiais
print (1..5).to_a
print ('a'..'z').to_a


#7 - precedencia de operadores

puts 3 + 2 * 5
puts (3+2) * 5

#8 - operador binary left shift

name = ''
name << "fulano"
name << "ciclano"

puts name