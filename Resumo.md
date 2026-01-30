# Resumo de Aulas

## Puts
[Aula 01-puts](praticando/01.rb)


## Váriaveis
[Aula 02-variáveis](praticando/02.rb)

-> Váriaveis em Ruby são declaradas apenas "usando-a".
-> O Ruby infere o tipo da váriavel no momento  da "declaração".

EX:
    x = 1
    y = 2.3
    z = "Rails 5.x.x"
Para verificar o tipo de váriavel, use o método .class
EX:
    irb
    2.7.2 :001 > a = 2
        => 2
    2.7.2 :002 > a.class
        => Integer

## Saída e Padrão
[Aula 03- Saida e entrada](praticando/03.rb)

-> A saída padrão STDOUT é representado pela "tela"
-> No Ruby usamos o puts para imprimir algo na tela
    puts "Olá Mundo"

-> A entrada padrão STIND é representado pelo teclado
-> No Ruby usamos o gets (get = pegar , s = string) para "ler" algo do teclado
    a = gets 

EX:
    puts "Qual seu nome ?"
    name = gets
    puts "Olá " + name 
    puts nome.inspect

saida:
    Qual seu nome ?
-   Luan
-   Olá Luan
-   "Luan\n" 

-> Nota-se este "\n", ele é o enter do teclado que foi pego

-> O Código de formatação \n indica "new line", ou seja, adiciona uma nova linha, ou, como dizem "Quebra de linha".
-> O .chomp é um método que remove o código de formatação \n do elemento ao qual foi aplicado. 

EX:
    puts "Qual seu nome ?"
    name = gets.chomp
    puts "Olá " + name 
    puts nome.inspect
    
saida:
    Qual seu nome ?
-   Luan
-   Olá Luan
-   "Luan" 

-> Coerção, cast ou casting é o procedimento que fazemos para "transformar" o conteúdo de uma variável/entrada em outro tipo.
-> Não modificamos a variável, apenas "interpretamos" ela como um tipo que queremos

EX:
    gets.to_i ( Int )
    x = "2.5"
    x.to_f ( Float )


## Condicionais (if, unless, case e estrutura condicional ternária)
[Aula 04 - Condicionais](/praticando/03.rb)

## Operadores Relacionais
[Aula 05 - Relacionais](/praticando/05.rb)

-> Operadores Relacionais e Aritméticos

-> Relacionais
    -> Maior ( > )
    -> Menor ( < )
    -> Maior igual ( >= )
    -> Menor igual ( <= )
    -> Igual ( == )
    -> Diferente ( != )

-> Aritméticos
    -> Soma ( + )
    -> Subtração ( - )
    -> Multiplicação ( * )
    -> Divisão ( / )
    -> Potência ( ** )
    -> Módulo - Resto da divisão ( % )


=======================================================
## Comandos e informações
[pry](/arquivos/pry.txt)
[IRB](/arquivos/IRB.txt)
[comandos_rvm](/arquivos/comandos_rvm.txt)

## Aulas
[Aula 01-puts](praticando/01.rb)
[Aula 02-variáveis](praticando/02.rb)
[Aula 03-Inserção e Coerção de dados](praticando/03.rb)
=======================================================

## Versões Ruby 2.3 vs 2.4+

-> 2.3
    Fixnum representa os inteiros
    Bignum representa os números "inteiros gigantes"

-> 2.4+
    Interge representa todos os números inteiros

EX:
-> Underline para ver quantos zeros
-> Versão 2.7.2
    2.7.2 :001 > w = 1_000_000 
     => 1000000 
    2.7.2 :002 > w.class
        => Integer 
    
-> Versão 2.3.7
    2.3.7 :01 > x = 1
         => 1 
    2.3.7 :02 > x.class
        => Fixnum 
    2.3.7 :03 > y = 1_000_000_000_000_000_000_000_000_000
         => 1000000000000000000000000000 
    2.3.7 :04 > y.class
        => Bignum 