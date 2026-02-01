# itens = [1, 2, 3, 4, 5]

# itens.each do |i|
#     puts "Itens: #{i}"
# end

# puts "==============="

# a = Array.new
# a.push('Luan')
# a.push(10)

# a.each do |i|
#     puts "Itens: #{i}"
# end 

puts "================="

x = []
x.push(15) # índice 0
x.push(10) # índice 1
x.push(12) # índice 2

puts x[0] # Vai retornar 15

# x.each do |i|
#     puts "Itens: #{i}"
# end 

puts "=================="
# Array 
a = [[ 11, 12, 13], [21, 22, 23], [31, 32, 33]]
    # Podemos usar o each para iterar
a.each do |externo|
    externo.each do |interno|
    puts interno
    end
end