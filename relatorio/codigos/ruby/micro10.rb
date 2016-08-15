# Calcula o fatorial de um numero

def fatorial(n)
  if n <= 0
    return 1
  else
    return (n * fatorial(n-1))
  end
end

puts("Digite um numero:")
numero = gets.chomp.to_i
fat = fatorial(numero)

puts("O fatorial de #{numero} e: #{fat}")
