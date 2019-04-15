=begin
    Uma figura de 4 lados pode ser quadrado ou retângulo ( esqueça as outras.)
    Crie uma funcionalidade para calcular àrea e perímetro. use Herança.
    Crie um Teste. área = A=b.h. Perímetro: valor encontrado quando se soma os quatro lados da figura.
=end

    class Figura
        def initialize(lado)
            @lado=lado
        end
    end
    
    class Quadrado< Figura
        def initialize(lado)
            super(lado)
        end
        def calc_p
            p= 2*@lado + 2*@lado
            puts "Perimetro = #{@lado}"
        end
    end
    q = Quadrado.new(2)
    q.calc_p
        