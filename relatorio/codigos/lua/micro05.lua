-- Listagem 17: Le strings e caracteres
--[[ Funcao: Escrever um algoritmo que leia o nome e o sexo de 56 pessoas e informe o nome e se ela e homem ou mulher. No final informe o total de homens e mulheres --]]

h = 0
m = 0
for x=1,5,1
do
	print("Digite o nome: ")
	nome = io.read()
	print("H - Homem ou M - Mulher")
	sexo = io.read()
	if(sexo == 'H') then h = h + 1
	elseif (sexo == 'M') then m = m + 1
	else print("Sexo só pode ser H ou M!")
	end
end

print("Foram inseridos",h,"homens")
print("Foram inseridas",m,"mulheres")