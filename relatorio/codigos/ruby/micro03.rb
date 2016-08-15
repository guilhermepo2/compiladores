# le um numero e verifica se ele esta entre 100 e 200

puts("Digite um numero:")
numero = gets.chomp.to_i

if numero >= 100
  if numero <= 200
    puts("O numero esta no intervalo entre 100 e 200")
  else
    puts("O numero nao esta no intervalo entre 100 e 200")
  end
else
  puts("O numero nao esta no intervalo entre 100 e 200")
end
