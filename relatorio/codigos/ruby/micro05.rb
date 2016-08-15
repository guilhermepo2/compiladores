# Le strings e caracteres

h = 0
m = 0

for i in 1..5
  puts("Digite o nome:")
  nome = gets.chomp
  puts("H - homem ou M - mulher")
  sexo = gets.chomp

  if(sexo == 'H')
    h = h + 1
  elsif (sexo == 'M')
    m = m + 1
  else
    puts("Sexo so pode ser H ou M!")
  end
end

puts("Foram inseridos #{h} homens.")
puts("Foram inseridas #{m} mulheres.")
