=begin class Pessoa
    def initialize(nome, sexo, idade, vegetariana)
        @nome = nome
        @sexo = sexo
        @idade = idade
        @vegetariana = vegetariana
    end
    
    def verificar_consumo
       if @idade <= 3 || @vegetariana==true
           puts("Quantidade de carne igual a zero")
       else if @idade > 4 && @idade< 13
           puts("Come 1kg")
            else puts("Come 2KG")
            end
       end       
    end   
end    


 ciclano = Pessoa.new("Ariel","Masculino",28,true)
 ciclano.verificar_consumo
 puts ("ooi")
=end

=begin
Exercício 1.2. Implemente uma classe Lâmpada. Toda lâmpada possui um estado (on/off ). 
Sabe-se que as lâmpadas podem ter seu estado trocado (click do interruptor). 
Será necessário também uma funcionalidade para checar o estado atual da lâmpada.
Uma lâmpada estraga após uma quantidade de clicks (o click não troca mais o estado deixando-a
eternamente em off ) e esta depende da lâmpada. Implemente esta situação e seu teste.

class Lamp
    def initialize 
        @lives = 3
        @on = false
    end 
    
    def rip
        if @lives == 0
            @on = false
            puts "Lampada morta!"
        else
            click
        end    
    end
    
    
    def click
        @lives -=1
       if @on == true
           @on = false
       else
           @on = true
       end   
    end  
    
    def estado
        puts "Estado = #{@on} \nVidas = #{@lives}"
    end    
end   

    lamp = Lamp.new
    lamp.rip
    lamp.rip
    lamp.estado
=end
=begin
    Exercício 1.3. Implemente uma classe chamada Complexo para representar números imaginários e esta deve possuir:
Atributos: dois doubles a(Parte real) e b(Parte imaginária).
Métodos:
(1) Construtor;
(2) soma(): recebe via parâmetro outro número complexo(objeto desta
classe) e efetua sua soma, ou seja, parte real será somada com
parte real, e parte imaginária com parte imaginária.
(3) multiplica(): recebe via parâmetro outro complexo(objeto desta
classe) e efetue a formula (a+bi)*(c+di) = (ac-bd)+(ad+bc)i
(4) toString(): Mostra uma string na tela com os atributos a e b na
notação Complexa a+bi;
(5) modulo(): retorna o modulo do número complexo que é dado po
|a+bi|=√
a
2 + b
2
(6) argumentoPrincipal(): retorna o ângulo formado pelo número
complexo no plano de argand-gauss que é dado pela fórmula θ =tan−1(b/a)
=end

class Complexo
        def initialize(a,b)
            @a=a
            @b=b
        end
       
        def a
            @a
        end
        def b
            @b
        end
        
        def soma(obj)
           @s1= a+obj.a
           @s2= b+obj.b
           puts"s1 = #{@s1}, s2 = #{@s2}"
        end
end

c= Complexo.new(2,3)
g= Complexo.new(5,6)

c.soma(g)

