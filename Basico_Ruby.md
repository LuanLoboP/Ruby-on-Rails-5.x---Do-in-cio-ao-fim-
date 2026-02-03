<<<<<<< Updated upstream
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
- [Aula 10 - Simbolos](/basico_ruby/10.rb) 
- [Aula 11 - Tipos primitivos vs complexos](/basico_ruby/11.rb) 

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
      a = [ [ 11, 12, 13], [21,22,23], [31,32,33] ]
      # Podemos usar o each para iterar
      a.each do |externo|
        externo.each do |interno|
          puts interno
      end
  ```

---

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
  x = x << "rails"
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

---

### Simbolos / Symbols
[Aula 10 - Simbolos](/basico_ruby/10.rb)

-> Símbolos são **"string imutáveis"**

EX:
  -> Todas são mesmo nome, porém locais diferentes na memória
  ``` ruby
  puts "Luan".object_id # 60
  puts "Luan".object_id # 80
  puts "Luan".object_id # 100
  puts "Luan".object_id # 120
  ```

  -> Já aqui, apenas um local da memória, mesmo repetindo o objeto, ele não é alocado em um novo local de memória
  ``` ruby 
  puts :Luan.object_id # 1024228
  puts :Luan.object_id # 1024228
  puts :Luan.object_id # 1024228
  puts :Luan.object_id # 1024228
  ```

-> Símbolos são muitos usados em situações onde precisamos de um identificador, pois eles garantem que seu uso não implicará na criação de novos objetos sempre que usados.
-> Hashes adoram símbolos: 
  EX:
  ``` ruby 
  h = {:curso => "Rails" } # Fórmula antiga
  h = {curso: "Rayls" } # Fórmula nova
  h = {curso : "Rails"} 
  ```
-> Na nova notação, posso usar **{ curso: "Rails" }**, este **curso:** o ruby entende como simbolo também, diferente de **{ curso : "Rails" }**  

--- 

## Sobre Parênteses e Constantes
[Complemento Aula 01 - Parênteses e Constantes](/basico_ruby/01.rb)

-> No Ruby o uso de **parênteses é opcional**: 
  EX:
``` ruby 
  puts ("Curso Rails")
  puts "Curso Rails"
```
-> **Contantes** são usadas para representar valores
  EX: 
  ``` ruby
  NOME = "Luan"
  PI = 3.14
  puts NOME 
  puts PI
  ``` 
  -> Uma **Variável** pode ser alterada, varia de valor
  -> Uma **Contante** é imutável, declara com letra *MAIÚSCULA*

---

## Tipos primitivos e complexos
[Aula 11 - Tipos primitivos vs complexos](/basico_ruby/11.rb) 

-> Tipos primitivos
  EX:
  ``` ruby 
  x = 1 #Inteiro
  y = 3.4 # Real / Float 
  z = "abc" # Caracteres / String 
  w = true # Lógico / Booleano 
  ``` 
-> Usamos os tipos **primitivos** para criar tipos **complexos**
-> Podemos dizer que os tipos complexos são as **classes/objetos**
  EX: 
  -> A classe *Date* 
    dd/mm/yyyy
    22/12/2009
    i ci ci => int(22) carac+int("/" + 12)  carac+int("/" + 2009) 

--------------------------------------
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
=======
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
- [Aula 10 - Simbolos](/basico_ruby/10.rb) 
- [Aula 11 - Tipos primitivos vs complexos](/basico_ruby/11.rb) 

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
      a = [ [ 11, 12, 13], [21,22,23], [31,32,33] ]
      # Podemos usar o each para iterar
      a.each do |externo|
        externo.each do |interno|
          puts interno
      end
  ```

---

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

---

### Simbolos / Symbols
[Aula 10 - Simbolos](/basico_ruby/10.rb)

-> Símbolos são **"string imutáveis"**

EX:
  -> Todas são mesmo nome, porém locais diferentes na memória
  ``` ruby
  puts "Luan".object_id # 60
  puts "Luan".object_id # 80
  puts "Luan".object_id # 100
  puts "Luan".object_id # 120
  ```

  -> Já aqui, apenas um local da memória, mesmo repetindo o objeto, ele não é alocado em um novo local de memória
  ``` ruby 
  puts :Luan.object_id # 1024228
  puts :Luan.object_id # 1024228
  puts :Luan.object_id # 1024228
  puts :Luan.object_id # 1024228
  ```

-> Símbolos são muitos usados em situações onde precisamos de um identificador, pois eles garantem que seu uso não implicará na criação de novos objetos sempre que usados.
-> Hashes adoram símbolos: 
  EX:
  ``` ruby 
  h = {:curso => "Rails" } # Fórmula antiga
  h = {curso: "Rayls" } # Fórmula nova
  h = {curso : "Rails"} 
  ```
-> Na nova notação, posso usar **{ curso: "Rails" }**, este **curso:** o ruby entende como simbolo também, diferente de **{ curso : "Rails" }**  

--- 

## Sobre Parênteses e Constantes
[Complemento Aula 01 - Parênteses e Constantes](/basico_ruby/01.rb)

-> No Ruby o uso de **parênteses é opcional**: 
  EX:
``` ruby 
  puts ("Curso Rails")
  puts "Curso Rails"
```
-> **Contantes** são usadas para representar valores
  EX: 
  ``` ruby
  NOME = "Luan"
  PI = 3.14
  puts NOME 
  puts PI
  ``` 
  -> Uma **Variável** pode ser alterada, varia de valor
  -> Uma **Contante** é imutável, declara com letra *MAIÚSCULA*

---

## Tipos primitivos e complexos
[Aula 11 - Tipos primitivos vs complexos](/basico_ruby/11.rb) 

-> Tipos primitivos
  EX:
  ``` ruby 
  x = 1 #Inteiro
  y = 3.4 # Real / Float 
  z = "abc" # Caracteres / String 
  w = true # Lógico / Booleano 
  ``` 
-> Usamos os tipos **primitivos** para criar tipos **complexos**
-> Podemos dizer que os tipos complexos são as **classes/objetos**
  EX: 
  -> A classe *Date* 
    dd/mm/yyyy
    22/12/2009
    i ci ci => int(22) carac+int("/" + 12)  carac+int("/" + 2009) 

--------------------------------------
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
>>>>>>> Stashed changes
