class Contador
    def initialize
       zerar
    end
    
    def incrementar
        @counter +=1
    end
    
    def zerar
        @counter=0
    end
    
    def mostrar_numero
        puts ("O valor é: #{@counter}")
    end
end

k = Contador.new

k.incrementar
k.incrementar
k.incrementar
k.mostrar_numero