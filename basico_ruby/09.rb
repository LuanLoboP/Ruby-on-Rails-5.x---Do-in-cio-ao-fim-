a = "Luan"
b = 'Rails'

puts a 
puts a.class
puts '======================='
puts b 
puts b.class

puts "======================="

# Concatenação de Strings
a = "Estudando "
b = "Rails"

puts a + b 
puts a << b 

puts "========================"

#Diferença de + e <<
x = "curso"
puts x.object_id # id do objeto
x = x + "rails"
puts x
puts x.object_id # id do objeto

puts ""

y = "curso de "
puts y.object_id # id do objeto
y << "rails"
puts y 
puts y.object_id # id do objeto

puts "========================="

a = "Luan você tem #{20 + 4}, e está estudando o #{y}"
puts a