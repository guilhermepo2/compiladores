# ler dois inteiros e decidir qual e maior

puts("Escreva o primeiro numero:")
num1 = gets.chomp.to_i
puts("Escreva o segundo numero:")
num2 = gets.chomp.to_i


if num1 > num2
  puts("O primeiro numero, #{num1}, e maior que o segundo, #{num2}")
else
  puts("O segundo numero, #{num2}, e maior que o primeiro, #{num1}")
end
