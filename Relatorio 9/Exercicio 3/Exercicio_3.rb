class PhoneWave

    def enviar_dmail(mensagem)
        puts "Essa mensagem: #{mensagem}. foi enviada para o passado"
    end
end

class MembroDoLab

    attr_reader :numero,:nome

    def initialize(numero,nome)
        @numero = numero
        @nome = nome
    end
end

class LaboratorioDeGadgets
    # COMPOSIÇÃO: o LaboratorioDeGadgets cria o PhoneWave dentro do próprio initialize (@phonewave = phoneWave.new). Sendo seu dependente 
    def initialize
        @phonewave = PhoneWave.new
        # AGREGAÇÃO: os MembroDoLab são criados FORA, na main, antes do laboratório existir, e só depois entregues a ele pelo admitir(). Eles têm vida própria. continuam existindo mesmo que o laboratório deixe de existir
        @membros = []
    end

    def admitir(membro)
        @membros << membro
        puts "O membro: #{membro.nome} foi adicionado. Seu numero é #{membro.numero} "
    end

    def experimento(mensagem)
        @membros.each do |i|
            puts "Membro: #{i.nome}  numeoro de identificacao: #{i.numero}"
        end
        @phonewave.enviar_dmail(mensagem)
    end
end

membro_1 = MembroDoLab.new("080-400","Joao Pedro")
membro_2 = MembroDoLab.new("180-604","Lucas")

laboratorio = LaboratorioDeGadgets.new

laboratorio.admitir(membro_1)

laboratorio.admitir(membro_2)

laboratorio.experimento("Noticias Urgentes!")



