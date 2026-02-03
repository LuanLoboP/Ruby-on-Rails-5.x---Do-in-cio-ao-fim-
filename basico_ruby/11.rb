# Tipos primitivos: Integer, Float, String, Boolean, Symbol, Nil
# Tipos complexos: Array, Hash, Range, Time, Struct, Class


# Inteiro
idade = 25

# Float
altura = 1.75

# String
nome = "Luan"

# Boolean
ativo = true
admin = false

# Símbolo
status = :ativo

# Nil (ausência de valor)
resultado = nil

puts "=================" 

# Array (lista de valores)
numeros = [1, 2, 3, 4, 5]

# Hash (chave => valor)
usuario = {
  nome: "Luan",
  idade: 25,
  ativo: true
}

# Range (intervalo)
intervalo = (1..10)

# Time (data e hora)
agora = Time.now

# Struct (estrutura simples de dados)
Pessoa = Struct.new(:nome, :idade)
pessoa = Pessoa.new("Luan", 25)

# Classe (objeto completo)
class Produto
  attr_accessor :nome, :preco

  def initialize(nome, preco)
    @nome = nome
    @preco = preco
  end
end

produto = Produto.new("Notebook", 3500.00)
