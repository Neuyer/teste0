=begin 2) Um endereco eh composto de 
nome da rua, cidade e estado.
Uma empresa só entrega em São
Paulo, Rio de Janeiro, Minas 
e Goiás. Faça um dispositivo 
para mostrar o endereço completo
por extenso. Implemente essa
situação
=end

class Endereco
    def initialize (estado, cidade, rua)
        @estado =estado
        @cidade = cidade
        @rua= rua
    end
    def valida_estado
        case @estado
            when :MG
                puts "a entrega será feita em #{@estado} na cidade de #{@cidade} na rua #{@rua}"
            when :SP
                puts "a entrega será feita em #{@estado} na cidade de #{@cidade} na rua #{@rua}"
            when :RJ
                puts "a entrega será feita em #{@estado} na cidade de #{@cidade} na rua #{@rua}"
            when String
                puts "Estado inválido"
            end
        end
end

entrega = Endereco.new( :MG,"santos","goiás")

entrega.valida_estado