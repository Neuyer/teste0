class Pneu 
    def initialize(durabilidade=100)
        @durabilidade = durabilidade 
    end
    
    def gastar
        @durabilidade -= 10
    end
    
    def mostrar_durabilidade
        puts "A durabilidade eh: #{@durabilidade}"
    end 
    
    #RETORNO BOOLEANO
    def is_vazio
        @durabilidade == 0
    end
end 

class Moto 
    def initialize(nome,pneu1,pneu2)
        @nome = nome 
        unless pneu1 == nil
            @pneu1 = pneu1
        else
            @pneu1 = Pneu.new
        end
        unless pneu2 == nil
            @pneu2 = pneu2
        else 
            @pneu2 = Pneu.new
        end
    end
    
    #FAZER O METODO TROCAR PNEU, CASO ESTE
    #ESTEJA VAZIO
    
    def mostrar_status
        puts "#{@nome}: "
        @pneu1.mostrar_durabilidade
        @pneu2.mostrar_durabilidade
    end 
    
    def acelerar
        if @pneu1.is_vazio or @pneu2.is_vazio
            puts "Pneu furado ai"
        else 
            mostrar_status
            @pneu1.gastar
            @pneu2.gastar
        end
    end
    
    def trocar_pneu
        if @pneu1.is_vazio
            @pneu1 = Pneu.new
        else
            puts "Pneu cheio!"
        end
        if @pneu2.is_vazio
           @pneu2 = Pneu.new
        else
            puts "Pneu cheio!"
        
        end
    end
end

p1 = Pneu.new(20)
p2 = Pneu.new

m = Moto.new("TWISTER",p1,p2)

m.acelerar
m.acelerar
m.acelerar
m.trocar_pneu



