-- Listagem 19: Decide se os numeros sao positivos, zeros ou negativos

--[[ Funcao: Faca um algoritmo que receba N numeros e mostre positivo, negativo ou zero para cada número --]]

programa = 1
while (programa == 1)
do
	print("Digite um numero: ")
	numero = io.read()
	numero = tonumber(numero)

	if(numero > 0)
	then print("Positivo")
	elseif(numero == 0)
	then print("O número é igual a 0")
	elseif(numero < 0)
	then print("Negativo")
	end


	print("Deseja Finalizar? (S/N)")
	opc = io.read("*line")
	
	if(opc == "S")
	then programa = 0
	end
end