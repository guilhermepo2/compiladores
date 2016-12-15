x: inteiro
y: float


function soma(a: inteiro, b: inteiro) : float
  x: inteiro
begin
  x = a + b
  return x
end

begin
y = 2.0
x = 1

if(x > y) then
  y = "string"
else
  y = 2

print("Soma: ", soma(3,5))
end
