# conversao de graus celsius para fahrenheit

puts("Tabela de Conversao: Celsius -> Fahrenheit")
puts("Digite a temperatura em Celsius: ")
cel = gets.chomp.to_i
far = (9*cel+160)/5
puts("A nova temperatura e: #{far}")
