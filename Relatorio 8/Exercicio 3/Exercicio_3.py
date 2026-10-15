class Persona:
    def __init__(self, nome:str, arcano:str):
        self.nome = nome
        self.arcano = arcano

    def invocar(self):
       print(f"{self.nome} de Arcano {self.arcano} foi invocado(a)")

class Aliado:
    def __init__(self, nome, codinome,):
        self.nome = nome
        self.codinome = codinome

class Lider:
    def __init__(self,codinome):
        self.codinome = codinome
        self.persona = Persona("Arsene", "Louco") 
    def recrutar(self, aliado: Aliado):
        self._equipe.append(aliado)
        print(f"{aliado.nome} foi recrutado para a equipe de {self.codinome}")

    def infiltrar(self, palacio):
        print(f"{self.codinome} está infiltrando no palácio de {palacio}")
        self.persona.invocar()
        for aliado in self._equipe:
            print(f"{aliado.nome} ({aliado.codinome}) está ajudando na infiltração")

if __name__ == "__main__":
    aliado_1 = Aliado("Roberto Carlos", "Goleador")
    aliado_2 = Aliado("Kratos", "Deus da Guerra")

    lider = Lider("Melhor Treinador Pokemon (Ash)")

    lider.recrutar(aliado_1)
    lider.recrutar(aliado_2)

    lider.infiltrar("Versalhes")

    #Composicao: Basicamente, a persona foi criada dentro da classe lider, e a classe lider tem uma instancia da classe persona, ou seja, a classe lider é composta pela classe persona. Com isso, se a classe lider for destruida, a classe persona tambem sera destruida, pois ela foi criada dentro da classe lider.

    #Agregacao: A classe lider tem uma lista de aliados, que sao instancias da classe aliado. Ou seja, a classe lider agrega a classe aliado. Com isso, se a classe lider for destruida, a classe aliado nao sera destruida, pois ela foi criada fora da classe lider.