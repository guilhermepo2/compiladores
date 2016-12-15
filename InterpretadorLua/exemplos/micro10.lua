-- Listagem 22: Calcula o fatorial de um numero

-- [[ Função: recebe um número e calcula recursivamente o fatorial desse número --]]

numero, fat: inteiro

function fatorial(n: inteiro): inteiro
begin
	 if(n <= 0)
	 then return 1
	 else
    return (n * fatorial(n - 1) )
	 end
end

begin

print("Digite um numero: ")
numero = io.read()
fat = fatorial(numero)

print("O fatorial de", numero, "e: ", fat)

end
