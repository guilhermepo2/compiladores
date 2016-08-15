# Escreve um numero lido por extenso

puts("Digite um numero 1 a 5:")
numero = gets.chomp.to_i

case numero
when 1
  puts("Um")
when 2
  puts("Dois")
when 3
  puts("Tres")
when 4
  puts("Quatro")
when 5
  puts("Cinco")
else
  puts("Numero invalido!!!")
end
