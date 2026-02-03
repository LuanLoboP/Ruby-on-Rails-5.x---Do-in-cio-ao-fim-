class Pessoa 
    # def initialize
    #     puts "Inicializando..." # Inicia toda vez que a classe é intanciada
    # end 

    # Maneira 1 => AO INSTÂNCIAR A CLASSE, A MANEIRA 1 JÁ INCIA AUTOMATICAMENTE
    # def initialize(cont = 5)
    #     cont.times do |i| 
    #         puts "Inicializando em #{i}"
    #     end
    # end

    # Maneira 2 => PASSANDO UM VALOR AO INICIAR O OBJETO p1 e p2
    def initialize(cont = 1)
        cont.times do 
            puts "Inicializando......."
        end 
    end 

    def falar(texto = "Olá pessoal!")
        texto
    end 

    def falar2(nome = "pessoal") # Indicando um valor padrão 
        "Olá senhor #{nome}"
    end 

    def falar3(texto1 = "Olá", texto2)
        "#{texto1} #{texto2}" #Interpolar para não tirar o texto1, nesse caso
    end
end 


p1 = Pessoa.new(5) # inicializando... Maneira 2

puts "=================="
puts p1.falar("Olá!") # Substituiu o texto def falar()
puts p1.falar

puts "=================="
puts p1.falar2("Luan")

puts "=================="
puts p1.falar3("Luan") # Entrou no texto2 
puts p1.falar3("Luan","Lobo") # Para substituir os dois texto1 e texto2

puts "==================" 
p2 = Pessoa.new(5) # inicializando...