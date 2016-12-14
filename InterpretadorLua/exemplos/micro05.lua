-- Listagem 17: Lê strings e caracteres
--[[ Função: Escrever um algoritmo que leia o nome e o sexo de 56 pessoas e informe o nome e se ela é homem ou mulher. No final informe o total de homens e mulheres --]]
h, m, x: inteiro
sexo, nome: cadeia

begin

h = 0
m = 0
x = 1
while(x <= 5)
do
	print("Digite o nome: ")
	nome = io.read()
	print("H - Homem ou M - Mulher")
	sexo = io.read()

  if(sexo == "H") then h = h + 1           -- o semantico nao consegue comparar com string
	else
    if (sexo == "M") then m = m + 1
	  else print("Sexo só pode ser H ou M!")
	  end
  end

  x = x + 1
end

print("Foram inseridos",h,"homens")
print("Foram inseridas",m,"mulheres")

end
