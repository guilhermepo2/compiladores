-- Le um numero e verifica se ele esta entre 100 e 200
--[[ Funcao: Faca um algoritmo que receba um numero e diga se este numero esta no intervalo entre 100 e 200 --]]

print("Digite um número:")
numero = io.read("*number")

if(numero >= 100)
then
	if(numero <= 200)
	then
		print("O número está no intervalo entre 100 e 200")
	else
		print("O número não está no intervalo entre 100 e 200")
	end
else
	print("O número não está no intervalo entre 100 e 200")
end