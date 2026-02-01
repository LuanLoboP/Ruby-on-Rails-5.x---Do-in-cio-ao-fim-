#while
c = 1
num = 10
while c <= num do
    puts "Contando... " + c.to_s # conversão para string
    c += 1 #incremento
end
puts "============================="
# each
['A', 'B', 3, 4.6, 10000000000, 'Luan'].each do |item|
    puts "Itens: #{item}" 
end