=begin 1) Um Revolver possui munição e
uma quantidade máxima dela.
Ao atirar é gasto uma munição e
só é possível esta ação se houver,
pelo menos, uma. É possível 
recarregar uma munição por vez caso
a quantidade de munição não seja a 
máxima. Crie um dispositivo para 
mostrar a quantidade atual de munição 
e a máxima. 
Implemente, em ruby, a situação descrita.
=end

class Revolver
    def initialize
        @ammo= 6
    end
    
    def atirar
        unless @ammo == 0 
            @ammo -=1
        else
            puts "Sem munição!!!"
        end
    end
    
    def carregar
        unless @ammo >=6
            @ammo += 1
        else
            puts "Munição cheia!"
        end
    end
    
    def qt_municao
        puts "Munção Total = #{@ammo}"
    end
end

gun = Revolver.new

gun.qt_municao
gun.atirar
gun.atirar
gun.qt_municao
gun.carregar
gun.qt_municao
gun.carregar
gun.carregar
gun.carregar