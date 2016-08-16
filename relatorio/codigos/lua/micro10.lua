--Listagem 22: Calcula o fatorial de um numero

--[[ Funcao: recebe um numero e calcula recursivamente o fatorial desse número --]]

function fatorial(n)
	 if(n <= 0)
	 then return 1
	 else return (n* fatorial(n-1))
	 end
end

print("Digite um numero: ")
numero = tonumber(io.read())
fat = fatorial(numero)

print("O fatorial de", numero, "e: ", fat)