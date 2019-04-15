#1 PARA n
class Aluno
   
   def initialize(nome, ra)
       @nome = nome 
       @ra = ra
   end
   
   def mostrar_dados
       puts "Nome: #{@nome}"
       puts "RA:   #{@ra}"
   end
end

class Disciplina 
   def initialize(nome)
       @nome = nome
       @alunos = []
   end
   
   def trancar(aluno)
       # JEITO DO RUBY DE GARANTIR QUE EH ALUNO
       case aluno 
            when Aluno 
                @alunos -= [aluno]
            else
                puts "Erro..."
       end
   end
   
   def matricular(aluno)
       # JEITO DO RUBY DE GARANTIR QUE EH ALUNO
       case aluno 
            when Aluno 
                @alunos << aluno
            else
                puts "Erro..."
       end
   end
   
   def listar
       puts "Disciplina: #{@nome}"
       for aluno in @alunos
           aluno.mostrar_dados
       end
   end
end

#Quero 6 alunos e um trancamento em 
#uma disciplina.
#Fazer a chamada dos 5.

fisica = Disciplina.new("Física")
a = Aluno.new("mario",11)
b = Aluno.new("Luigi",12)
c = Aluno.new("Toads",13)
d = Aluno.new("Yoshi",14)
e = Aluno.new("Wario",15)
f = Aluno.new("Koopa",16)

fisica.matricular(a)
fisica.matricular(b)
fisica.matricular(c)
fisica.matricular(d)
fisica.matricular(e)
fisica.matricular(f)

fisica.trancar(c)

fisica.listar