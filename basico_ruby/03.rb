puts "Seu nome"
name = gets.chomp
puts "Olá " + name

puts "==============="

puts "Com o inspect >>>>>" + name.inspect

puts "==============="

puts "Informe seu salário ?"
salary = gets.chomp.to_f
puts "Seu salário é : " + (salary * 1.10).to_s



