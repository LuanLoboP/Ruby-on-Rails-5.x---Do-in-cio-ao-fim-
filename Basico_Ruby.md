# Resumo de Aulas

## Aulas

- [Aula 01 – Puts](/basico_ruby/01.rb)
- [Aula 02 – Variáveis](/basico_ruby/02.rb)
- [Aula 03 – Saída e Entrada](/basico_ruby/03.rb)
- [Aula 04 – Condicionais](/basico_ruby/04.rb)
- [Aula 05 – Operadores Relacionais e Aritméticos](/basico_ruby/05.rb)
- [Aula 06 – Estruturas de Repetição](/basico_ruby/06.rb)
- [Aula 07 – Arrays e Vetores](/basico_ruby/07.rb)
- [Aula 08 - Hashes](/basico_ruby/08.rb)
- [Aula 09- Strings](/basico_ruby/09.rb)


---

## Conceitos Básicos-Ruby

### Puts
[Aula 01 – Puts](/basico_ruby/01.rb)

-> Utilizado para imprimir informações na saída padrão (STDOUT).

---

### Variáveis
[Aula 02 – Variáveis](/basico_ruby/02.rb)

* Variáveis em Ruby são declaradas apenas ao serem usadas.
* O Ruby infere automaticamente o tipo da variável no momento da atribuição.

EX:
  ```ruby
  x = 1
  y = 2.3
  z = "Rails 5.x.x"
  ```

  -> Para verificar o tipo de uma variável, utilize o método `.class`.

  ```ruby
  a = 2
  a.class # => Integer
  ```

---

### Entrada e Saída Padrão
[Aula 03 – Saída e Entrada](/basico_ruby/03.rb)

* **STDOUT** representa a tela (saída)
* **STDIN** representa o teclado (entrada)

```ruby
puts "Olá Mundo"
```

```ruby
puts "Qual seu nome?"
name = gets
puts "Olá " + name
puts name.inspect
```

Saída:

```
Qual seu nome?
Luan
Olá Luan
"Luan\n"
```

* `\n` representa uma quebra de linha (new line)
* O método `.chomp` remove o `\n`

```ruby
name = gets.chomp
```

---

### Coerção (Casting)

-> Transformação do tipo de um valor sem alterar a variável original.

```ruby
gets.to_i  # Integer
x = "2.5"
x.to_f     # Float
```

---

### Condicionais
[Aula 04 – Condicionais](/basico_ruby/04.rb)

* `if`
* `unless`
* `case`
* Operador ternário

---

### Operadores
[Aula 05 – Operadores Relacionais e Aritméticos](/basico_ruby/05.rb)

**Relacionais**

* Maior: `>`
* Menor: `<`
* Maior ou igual: `>=`
* Menor ou igual: `<=`
* Igual: `==`
* Diferente: `!=`

**Aritméticos**

* Soma: `+`
* Subtração: `-`
* Multiplicação: `*`
* Divisão: `/`
* Potência: `**`
* Módulo: `%`

---

### Estruturas de Repetição
[Aula 06 – Estruturas de Repetição](/basico_ruby/06.rb)

#### while

-> Executa um bloco de código enquanto uma condição for verdadeira.

```ruby
c = 1
num = 10

while c <= num
  puts "Contando... #{c}"
  c += 1
end
```

#### each

-> Iterador utilizado para percorrer coleções.

```ruby
(0..5).each do |i|
  puts "O valor lido foi: #{i}"
end
```

---

### Vetores / Array
[Aula 07 – Arrays e Vetores](/basico_ruby/07.rb)

-> Coleções ordenadas que armazenam múltiplos valores.
-> Você pode declarar/usar de duas formas:

``` ruby
a = [15, 62, 73, 48]
```
Ou 
``` ruby
a = [] ou a.Array.new
a.push(15)
a.push(62)
```
-> Para acessar, use o índice:
``` ruby
puts a.[0] # Primeiro item do array
``` 

-> Em Ruby, os arrays são dinâmicos e aceitam armazenar tipos diferentes de dados
  EX: 
  ``` Ruby
  a = ["Curso", 62, 1.4]
  a.push("Hello")
  ``` 

-> Arrays podem ser aninhados: 
  EX:
  ``` ruby
      a = [ [ 11, 12, 13], [21,22,23], 31,32,33 ]
      # Podemos usar o each para iterar
      a.each do |externo|
        externo.each do |interno|
          puts interno
      end
  ```

### Hashes 
[Aula 08 - Hashes](/basico_ruby/08.rb)

-> Uma lista do tipo chave e valor 
  EX: 
  ``` ruby 
    # Tradicional:
      h = {"X" => 15, "Curso" => "Rails"}
      # Mordena 
      h = {"X": 15, "Curso"> "rails"}
      # Para acessar os elementos, use os [ ]
      h["Curso"]
  ```
  -> Em um hash você determina qual é a "chave" para acesar o valor
  ---

### Strings, Concatenação e Interpolação de Variáveis
[Aula 09- Strings](/basico_ruby/09.rb)

-> Strings são determinadas por usar as aspas duplas ou simples

EX:
  ``` ruby 
  x = "Curso de Rails"
  y = 'Curso de Ruby'
  ```

-> Concatenação de Strings

  -> Concatenação
  EX: 
  ``` ruby
  x = "Rails"
  y = "Curso " + x # Junto as duas
  puts y
  ```
  -> Shovel ( << )
  EX: 
  ``` ruby
  x = "Rails"
  y = "Curso " << x # Coloco o x no
  puts y
  ```
  -> Diferença entre + e <<
  EX: 
  ``` ruby
  x = "curso"
  puts x.object_id 
  x = x + "rails"
  puts x
  puts x.object_id

  puts "==========="

  y = "curso de "
  puts y.object_id 
  y << "rails"
  puts y 
  puts y.object_id
  ```
**(+) concatenação**
  -> O + gera um novo objeto sempre que usado

  -> O Ruby faz aloca o "x" num novo local de memória, já que "x" esta sendo concatenado "+". Gera um novo objeto. Vemos o id dele com object_id.

  -> Existe um ponto negativo, se você colocar pra concatenar em um sistema que tenha por exemplo 50.000 funcionários. Cada concatenação gera um novo valor de memória, isso gera perda de perfomance.  

**(<<) Shovel = pa**
-> Shovel não cria um novo objeto, ele atribui o valor na variável que esta sendo atribuida.
EX:
  ``` ruby 
  x = "curso"
  puts x.object_id # id do objeto
  x = x + "rails"
  puts x
  puts x.object_id # id do objeto

  # Saida
  => 100 # object_id
  => curso de rails
  => 100 # mesmo object_id
  ```

-> Intepolação de váriaveis

  -> Use a combinação #{} para interpolar strings com váriaveis ou código ruby
  EX:
  ``` ruby
  x = "Luan"
  puts "Olá #{x}"
  ```
  -> Apenas strings criadas com aspas duplas são interpoláveis


### Simbolos / Symbols
[Aula 10 - Simbolos](/basico_ruby/10.rb)

-> Símbolos são "string imutáveis"

EX:
  ``` ruby
puts "Luan".object_id
puts "Luan".object_id
puts "Luan".object_id
puts "Luan".object_id
  ```








## Comandos e Ferramentas

* [Pry](arquivos/pry.txt)
* [IRB](arquivos/IRB.txt)
* [Comandos RVM](arquivos/comandos_rvm.txt)

---

## Versões do Ruby (2.3 vs 2.4+)

### Ruby 2.3

* `Fixnum`: inteiros
* `Bignum`: inteiros muito grandes

### Ruby 2.4+

* `Integer`: unifica Fixnum e Bignum

EX:
  ```ruby
  w = 1_000_000
  w.class # => Integer
  ```

  Em Ruby 2.3:

  ```ruby
  x = 1
  x.class # => Fixnum

  y = 1_000_000_000_000_000_000
  y.class # => Bignum
  ```
