class HeroiOverwatch:

    def __init__(self, codinome:str, funcao:str):
        self.codinome = codinome
        self.funcao = funcao

    def usar_suprema(self):
        print(f"{self.codinome} usou a suprema")

class HeroiTanque(HeroiOverwatch):
    def usar_suprema(self):
        print(f"{self.codinome} é um herói do tipo Tanque e está usando a suprema")

class HeroiSuporte(HeroiOverwatch):
    def usar_suprema(self):
        print(f"{self.codinome} é um herói do tipo Suporte e está usando a suprema")
    def curar_equipe(self):
        print(f"{self.codinome} deu cura para os aliados")


if __name__ == "__main__":
    herois: list[HeroiOverwatch] = [
        HeroiTanque("Reinhardt", "Tanque"),
        HeroiSuporte("Mercy", "Suporte"),
        HeroiOverwatch("Tracer", "Dano"),
    ]

    for heroi in herois:
        heroi.usar_suprema()
        if isinstance(heroi, HeroiSuporte):
            heroi.curar_equipe()