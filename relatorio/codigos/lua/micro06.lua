-- Escreve um numero lido por extenso

--[[ Funcao: Faça um algoritmo que leia um número de 1 a 5 e o escreva por extenso. Caso o usuario digite um numero que nao esteja nesse intervalo, exibir mensagem: numero invalido --]]

print("Digite um número de 1 a 5")
numero = io.read("*number")
if(numero == 1) then print("Um")
elseif (numero == 2) then print("Dois")
elseif (numero == 3) then print("Três")
elseif (numero == 4) then print("Quatro")
elseif (numero == 5) then print("Cinco")
else print("Número Invalido!!!")
end