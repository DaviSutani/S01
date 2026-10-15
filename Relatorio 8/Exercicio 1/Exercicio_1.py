class MortoVivo:

    def __init__(self, nome:str, almas:int, estus:int):
        self.nome = nome
        self._almas = almas
        self.__estus = estus

    def get_estus(self):
        return self.__estus

    def set_estus(self, quantidade_estus:int):
        if quantidade_estus >= 0 and quantidade_estus <= 10:
            self.__estus = quantidade_estus
        else:
            print("Quantidade de Estus inválida!")

    def mostrar_status(self):
        return f"Morto-vivo {self.nome} | Almas: {self._almas} | Estus: {self.__estus}"

class Clerigo(MortoVivo):

    def __init__(self, nome: str, almas: int, estus: int, milagre: str):
        super().__init__(nome, almas, estus)
        self.milagre = milagre

    def mostrar_status(self):
        return super().mostrar_status() + f" | Milagre: {self.milagre}"

if __name__ == "__main__":
    Davi = Clerigo("Davi",100,5,"Toque de cura")
    print(Davi.mostrar_status())

    Davi.set_estus(15)
    print(Davi.mostrar_status())
   
    Davi.set_estus(10)
    print(Davi.mostrar_status())

    #print(Davi.__estus)
    # AttributeError: 'Clerigo' object has no attribute '__estus'
    
 