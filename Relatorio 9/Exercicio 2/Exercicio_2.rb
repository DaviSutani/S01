class Instrumentista
    attr_reader :nome, :instrumento

    def initialize(nome,instrumento)

        @nome = nome
        @instrumento = instrumento
    end
   
    def interpretar(peca)

        raise NotImplementedError, "#{self.class} é de algum grupo de categoria"
    end 
end

class Solista < Instrumentista
   
    def interpretar(peca)
        
        puts "#{@nome} é o solista, utilizando o instrumento: #{@instrumento} na peca #{peca}, o qual #{@nome} é responsavel!"
    end
end

class Acompanhador < Instrumentista
  
    def interpretar(peca)
        puts "#{@nome} é o acompanhador, utilizando o instrumento: #{@instrumento} na peca #{peca} e esta acompanhando o ritmo do solista!"
    end
end

class Regente
    attr_reader :nome,:orquestra

    def initialize(nome)
        @nome = nome
        @orquestra = []
    end

    def convocar(instrumentista)
        @orquestra << instrumentista
    end

    def reger(peca)

        puts "O regente é: #{@nome} e ele vai reger a peca: #{peca}"
        
        @orquestra.each do |i|
            i.interpretar(peca)
        end
    end
    def escalacao 
        return @orquestra.map{|i| "#{i.nome} atua como #{i.class} tocando #{i.instrumento}" }
    end
end


regente = Regente.new("Emmile")
acompanhador = Acompanhador.new("Leonardo","bateria")
solista = Solista.new("Rose", "Violino")

regente.convocar(solista)
regente.convocar(acompanhador)


regente.reger("Lisboa")

regente.escalacao.each do |i|
    puts i
end

#HelloWorld.rb:12:in `interpretar': Instrumentista é de algum grupo de categoria (NotImplementedError)
#	from HelloWorld.rb:76:in `<top (required)>'
#	from -e:1:in `load'
#	from -e:1:in `<main>'

#novo = Instrumentista.new("Davi","Guitarra")
#novo.interpretar("Avengers")



