=begin 
    herança (is-A)
        -Relação hierarquica entre classes.
        Uma classe superior é chamada "SuperClasse".
        E as inferiores chamdas de "SubClasses".
        Em ruby herança só é válida para MÉtodos!!! n se pode acessar atributos aqui!
        
    
=end

class Animal
     def dormir
         puts "ZZZZZZZzzzzzz..."
     end
     
     def comer
         puts "comeu..."
     end
end

class Gato < Animal
     def miar
         puts "MIAAAAUUUU"
     end
end

class Cachorro < Animal
     def latir
         puts "rouf..."
     end
end

a = Animal.new
a.dormir
a.comer

c = Cachorro.new
c.dormir
c.comer
c.latir

g= Gato.new
g.dormir
g.comer
g.miar