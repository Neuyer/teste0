# comentário
puts "hello world!"

class Cachorro
    def initialize(nome, raca)
            @nome = nome
            @raca = raca
            @patas= 4
    end
    
    def latir
            puts "#{@nome} au au au"
    end
    
    def mostrarRaca
            puts "minha raça é:#{@raca}"
    end
    
    def nPatas
        puts "tenho #{@patas} patass"
    end
end
    c = Cachorro.new("Bidu","Pincher")
    c.nPatas
   # c.latir

vet =  []
num= 1
while num<10 
    num += num
end

puts num