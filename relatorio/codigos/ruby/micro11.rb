# Decide se um numero e positivo, zero ou negativo com auxilio de uma funcao

def verifica(n)
  if n > 0
    res = 1
  elsif n < 0
    res = -1
  else
    res = 0
  end

  return res
end

puts("Escreva um numero:")
numero = gets.chomp.to_i

x = verifica(numero)

if x == 1
  puts("Numero positivo")
elsif x == 0
  puts("Zero")
else
  puts("Numero Negativo")
end
