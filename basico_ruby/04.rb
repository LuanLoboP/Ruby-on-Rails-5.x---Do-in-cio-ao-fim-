#Nesse caso eu usei o print para o que eu digitar no terminal fique na mesma linha

IF
print "Digíte um número: "
x = gets.chomp.to_i

if x > 2 #SE X > 2 = TRUE EXECULTA A LINHA ABAIXO
    puts "X é maior que 2"
end 

puts "=================="

UNLESS (SE NÃO, TIPO UM IF NEGADO, FALSE VEM PRIMEIRO)
print "Escreva um número: "
n = gets.chomp.to_i

unless n >= 2
    puts "N é menor que 2"
else 
    puts "N é maior que 2" 
end 

puts "=================="

print "Digite uma idade: "
idade = gets.chomp.to_i

case idade
when 0..2
    puts "Bebê"
when 3..12
    puts "Criança"
when 13..18
    puts "Adolescente"
when 19..59
    puts "Adulto"
else
    puts "Idoso"
end 

puts "=================="

# Estrutura condicional ternária
sexo = 'M' ? (puts "Masculino") : (puts "Feminino")

# Seria assim sem o operador ternário :
sexo = 'F'

# ?
if sexo == 'F'
    puts "Feminino"
else # :
    puts "Masculino"
end