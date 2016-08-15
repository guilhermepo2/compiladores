# Le numero e informa quais estao entre 10 e 150

intervalo = 0
for i in 1..5
  puts("Digite um numero:")
  num = gets.chomp.to_i
  if num >= 10
    if num <= 150
      intervalo = intervalo + 1
    end
  end
end

puts("Ao total, foram digitados #{intervalo} numeros no intervalo entre 10 e 150")
