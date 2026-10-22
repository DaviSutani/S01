class CoquetelAfterlife
  attr_reader :nome

  def initialize(nome, preco)
    @nome = nome
    @_preco = preco
  end

  def preco
    @_preco
  end

  def preco=(valor_novo)
    if valor_novo >= 5 && valor_novo <= 200
      @_preco = valor_novo
    else
      puts "Preço inválido!"
    end
  end

  def ficha
    return "Nome: #{@nome} com o valor de: R$#{@_preco}"
  end

end

class DrinkDeLenda < CoquetelAfterlife
  attr_reader :lenda

  def initialize(nome, preco, lenda)
    super(nome, preco)
    @lenda = lenda
  end

  def ficha
    return super + " lenda homenageada: #{@lenda}"
  end
end

coquetel = []
coquetel << CoquetelAfterlife.new("SEX ON THE BEACH", 180)
coquetel << DrinkDeLenda.new("Mojito", 150, "Yan de almeida")
coquetel << DrinkDeLenda.new("Margarita", 35, "Diego Augusto")

coquetel.each do |i|
  puts i.ficha
end

coquetel[1].preco = 1204

coquetel[1].preco = 200
puts coquetel[1].ficha

#HelloWorld.rb:51:in `<main>': undefined method `ficha' for 1204:Integer (NoMethodError)
#coquetel[0].nome = "Davi"