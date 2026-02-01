puts "Informe um número: "
num = gets.chomp.to_i

puts "Escolha um limite entre 10 a 100 para ser o limite da tabuada: "
limite = gets.chomp.to_i

contador  = 1
while contador <= limite do 
    resultado = num * contador
    puts "#{num} * #{contador} = #{resultado}"
    contador += 1
end 