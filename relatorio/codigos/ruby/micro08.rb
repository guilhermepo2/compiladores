# Decide se um numero e maior ou menor que 10

numero = 1
while numero != 0
  puts("Escreva um numero:")
  numero = gets.chomp.to_i

  if numero > 10
    puts("O numero #{numero} e maior que 10")
  else
    puts("O numero #{numero} e menor que 10")
  end
end
