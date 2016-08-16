-- Listagem 23: Decide se um numero e positivo, zero ou negativo com o auxilio de uma funcao.

--[[ Funcao: recebe um numero e verifica se o numero e positivo, nulo ou negativo com o auxilio de uma funcao --]]

function verifica(n)
	 if(n > 0)
	 then res = 1
	 elseif (n < 0)
	 then res = -1
	 else res = 0
	 end

	 return res
end

print("Escreva um numero: ")
numero = tonumber(io.read())
x = verifica(numero)

if(x==1)
then print("Numero positivo")
elseif(x==0)
then print("Zero")
else print("Numero negativo")
end