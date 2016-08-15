# Decide se os numeros sao positivos, zero ou negativos

programa = 1
while programa == 1
  puts("Digite um numero: ")
  numero = gets.chomp.to_i

  if numero > 0
    puts("Positivo")
  elsif numero == 0
    puts("O numero e igual a 0")
  elsif numero < 0
    puts("Negativo")
  end

  puts("Deseja finalizar? (S/N)")
  opc = gets.chomp

  if opc == 'S'
    programa = 0
  end
end
