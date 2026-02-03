# Resumos de Aulas 

## Aulas 

- [Aula 01 - Classes vs Objetos](/POO_ruby/01.rb) 
- [Aula 02 - Classes e Métodos](/POO_ruby/02.rb)
- [Aula 03 - Parâmetros e Initialize ](/POO_ruby/03.rb)




--- 

## Classes vs Objetos ("Formas" vs "Objeto pronto") 
[Aula 01 - Classes vs Objetos](/POO_ruby/01.rb) 

-> Uma *classe* por exemplo seria uma planta de uma casa, a casa seria o *objeto* em si. Com a planta da casa eu posso exigir que a casa seja sempre do jeito que é a forma, no caso a planta. 

-> Mas pode ser que a casa não tenha a mesma cor, ou o tipo da porta. A forma predertemina muito sobre a casa, não tudo, mas muita coisa 

### Classes

-> As *classes* são a maneira que temos de informar como queremos que nosso objeto funcione

-> Ao criarmos uma classe podemos especificar os métodos e os atributos que os objetos possuirão.

-> Os *métodos* são as *ações* ( **de um carro** )
    EX:
    -> Acelera , freia, liga o farol , buzina, volante ...

-> Os *atributos* são *características* ( **de um carro** )
    EX: 
    -> Cor cinza, possui pneus aro 13, volante azul, buzina de caminhão ...

-> **Tudo no Ruby é objeto!** 
    EX: 
    -> Método *.class* 
        -> O .class permiti saber quem foi o pai que gerou, tipo, a classe do objeto
        -> O object_id, identificação do objeto.

-> **Qual a vantagem de tudo ser objeto no Ruby ?**  
    -> Você "ganha" automaticamente várias ações/ métodos em seus objetos. 
    -> Para conhecer os métodos do objeto:
        EX:
        -> "Luan".*TAB* => Vai mostrar as opções de métodos para esse objeto. 

## Criando Classes e Métodos
[Aula 02 - Classes e Métodos](/POO_ruby/02.rb)

-> **Lembre-se** => Uma classe instanciada é um objeto! 
-> Ou seja **instanciar uma classe é criar um objeto baseado nela, com seu próprio estado e comportamento.**

-> Duas formas de instanciar uma classe
    EX:
``` ruby
    # Por inferência ( Ruby adivinha )
    a = [61, 92, 37] # Ruby sabe que é um ARRAY

    # Declaração explícita
    b = Array.new 
    b.push(63) 
``` 

-> **Como criar um classe ?** 
    -> Crie um arquivo *pessoa.rb*, por exemplo
``` ruby
    # Dentro do arquivo, escreva a palavra reservada (*class*), depois o nome da classe, primeira letra maiúscula
    class Pessoa 
    end
``` 
-> A *classe* sempre começa com *letra maiúscula* 
-> **Nomes compostos devem capitular o início de cada palavra**. 
    EX: 
``` ruby 
    PessoaFisica 
``` 

-> **Use o irb para testar** 
-> **Use o** *require_realative* 
EX: 
``` ruby 
    # IRB ou PRY 
    require_relative "arquivo.rb"
    p = Pessoa.new # Instanciando uma classe 
``` 
-> **O nome do arquivo não é obrigatório ser o mesmo da classe!** 

-> **Como criar métodos (ações) ?** 
    -> Dentro da classe, use o *def / end* 
    EX:
``` ruby 
    def falar 
        "Olá, Pessoal!"
    end
```  

---

## Parâmetros e Método Initialize 
[Aula 03 - Parâmetros e Initialize ](/POO_ruby/03.rb) 

-> **Parâmetros**
    -> É a forma de passar dados para dentro do método 
    EX: 
``` ruby 
    def falar(texto) # Método falar, parâmetro texto
        "Olá!, #{texto}" 
    end
```  
    -> Posso também indicar um valor padrão
    EX:
``` ruby 
    def falar(texto = "Olá, tudo bem ?")
        texto
    end
```  

    -> Da para usar mais de um parâmetro 
    EX: 
``` ruby 
    def falar(texto = "Hello", texto2 = "World!")
        "#{texto} #{texto2}"
    end
```  

-> **Método initialize** 
    -> O método `initialize` é um método especial que define o que o que *objeto* deve fazer no momento em que a classe é instanciada.
    -> Ele é *executado automaticamente* sempre que um novo objeto é criado.
    EX: 
``` ruby 
    def initialize 
        puts "Inicializando..." # o que o objeto deve fazer ao ser instanciado
    end 
``` 
    -> Também pode usar parâmetros na inicialização 
    EX:
``` ruby 
     def initialize(cont = 5)
        cont.times do |i|
            puts "Inicializando em #{i}"
        end
    end
``` 
    
---
