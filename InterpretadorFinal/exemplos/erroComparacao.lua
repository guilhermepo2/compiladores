-- Listagem 14:

--[[ Função : ]]
num1 : inteiro
f : float

begin

print("Escreva o primeiro número:")
num1 = io.read()
print("Escreva o segundo número:")
f = io.read()

--[[
comentario nao pode dar erro
]]

if(num1 > f)
then
	print("O primeiro número", num1,"é maior que o segundo",f)
else
	print("O segundo número", f, "é maior que o primeiro", num1)
end

end
