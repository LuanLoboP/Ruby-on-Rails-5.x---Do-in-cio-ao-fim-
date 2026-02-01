if 1 != 2
    puts 10 ** 2
else 
    puts 10 / 2
end 

puts "======================"

x = 4
if x >= 4  # 
    puts "X é maior"
else 
    puts "X é menor"
end

puts "======================"
puts "Digite um número: "

num = gets.chomp.to_i

if num % 2 == 0
    puts "Número par"
else 
    puts "Número ímpar"
end
puts "======================"