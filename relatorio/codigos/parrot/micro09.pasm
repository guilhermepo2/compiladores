# Calculo de precos
.loadlib 'io_ops'


print         "Digite a venda (max. 4 digitos): "
read          S1, 5
set           I2, S1
print         "Digite o preco (max. 2 digitos): "
read          S1, 3
set           I1, S1

# cmp(1, 2, 3)
# 1 é -1 se 2 < 3, e 1 caso contrario

islt          I10, I2, 500            # verifica se venda e menor que 500
islt          I11, I1, 30             # Verifica se preco e menor que 30
or            I20, I11, I10           # Realiza o OR
eq            I20, 1, AUMENTAR_10_PORCENTO

isge          I13, I2, 500            # venda maior ou igual que 500
islt          I14, I2, 1200           # venda menor que 1200
and           I21, I13, I14           # Realiza o AND

isge          I15, I1, 30             # preco maior ou igual a 30
islt          I16, I1, 80             # preco menor que 80
and           I22, I15, I16           # Realiza o AND

or            I23, I21, I22           # Realiza o OR entre os dois AND
eq            I23, 1, AUMENTAR_15_PORCENTO

# O novo preco sera colocado em N10
DIMINUIR_20_PORCENTO:
div           N1, 2, 10
mul           N2, I1, N1
add           N10, I1, N2
branch        FIM

AUMENTAR_10_PORCENTO:
div           N1, 1, 10
mul           N2, I1, N1
add           N10, I1, N2
branch        FIM

AUMENTAR_15_PORCENTO:
div           N1, 15, 100
mul           N2, I1, N1
sub           N10, I1, N2

FIM:
print         "O novo preco e: "
print         N10
print         "\n"
end
