class Pessoa 
    def falar 
        "Olá, pessoal!" 
    end 
end 

p = Pessoa.new 
puts p.falar



# Teste dentro do pry

# [4] pry(main)> require_relative "02.rb"
# => true
# [5] pry(main)> p = Pessoa.new
# => #<Pessoa:0x000064c18392b9c8>
# [6] pry(main)> p.class
# => Pessoa
# [7] pry(main)> 