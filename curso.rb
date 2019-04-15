class Curso
        def initialize(nome, carga)
                @nome = nome
                @carga = carga
        end
        
        def mostrar
                puts "Curso #{@nome}, carga: #{@carga}"
        end
        
        def frase_de_odio
            case @nome
                when :ADS
                    puts "Curso de COBOL"
                when :SI
                    puts "Curso de Designer"
                when :LOG
                    puts "Curso de container"
                when :GE
                    puts"Curso de café da manhã"
                when :GP
                    puts "Curso de desempregado"
            end
        end
        
        c = Curso.new(:Ads , "16h")
        
        c.mostrar
        c.frase_de_odio
end