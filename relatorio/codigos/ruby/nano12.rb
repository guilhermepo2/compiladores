# Comando condicional aninhado em um comando de repeticao
n = 1
m = 2
x = 5

while x > n
  if n == m
    puts(n)
  else
    puts("0")
  end
  x = x - 1
end
