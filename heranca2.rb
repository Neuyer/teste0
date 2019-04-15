class Animal
     def initialize(nome)
         @nome = nome
     end
     def dormir
         puts "#{@nome} ZZZZZZZzzzzzz..."
     end
     
     def comer
         puts "#{@nome} comeu..."
     end
end

class Gato < Animal
     def initialize(nome, vidas)
         super(nome)
         #qualquer atributo é colocado sempre depois do Super
         @vidas = vidas
     end
     def miar
         puts "#{@nome} MIAAAAUUUU"
     end
end

class Cachorro < Animal
     def initialize(nome)
         super(nome)
     end
     def latir
         puts "#{@nome} rouf..."
     end
end

c = Cachorro.new("Austin")

c.dormirclass Animal
     def initialize(nome)
         @nome = nome
     end
     def dormir
         puts "#{@nome} ZZZZZZZzzzzzz..."
     end
     
     def comer
         puts "#{@nome} comeu..."
     end
end

class Gato < Animal
     def initialize(nome, vidas)
         super(nome)
         #qualquer atributo é colocado sempre depois do Super
         @vidas = vidas
     end
     def miar
         puts "#{@nome} MIAAAAUUUU"
     end
end

class Cachorro < Animal
     def initialize(nome)
         super(nome)
     end
     def latir
         puts "#{@nome} rouf..."
     end
end

c = Cachorro.new("Austin")

c.dormir