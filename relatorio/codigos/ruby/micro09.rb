# Calculo de Precos

puts("Digite o preco:")
preco = gets.chomp.to_f
puts("Digite a venda:")
venda = gets.chomp.to_f

if venda < 500 or preco < 30
  novo_preco = (preco + (10/100.to_f * preco))
elsif ((venda >= 500 and venda < 1200) or (preco >= 30 and preco < 80))
  novo_preco = preco + (15/100.to_f * preco)
elsif venda >= 1200 or preco >= 80
  puts("Oi3")
  novo_preco = preco - (20/100.to_f * preco)
end

puts("O novo preco e #{novo_preco}")
