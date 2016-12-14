-- Listagem 22: Calcula o fatorial de um numero

--[[ Função: recebe um número e calcula recursivamente o fatorial desse número --]]

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
