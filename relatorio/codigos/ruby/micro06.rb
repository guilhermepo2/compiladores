# Escreve um numero lido por extenso

puts("Digite um numero 1 a 5:")
numero = gets.chomp.to_i

if numero == 1
  puts("Um")
elsif numero == 2
  puts("Dois")
elsif numero == 3
  puts("Tres")
elsif numero == 4
  puts("Quatro")
elsif numero == 5
  puts("Cinco")
else
  puts("Numero invalido!!!")
end
