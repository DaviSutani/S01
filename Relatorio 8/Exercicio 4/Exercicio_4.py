from abc import ABC, abstractmethod

class IUnidadeDeRede(ABC):
    @abstractmethod
    def executar_invasao(self):
        pass

class Cyberdeck:
    def __init__(self, modelo:str):
        self.modelo = modelo
class OperadorNetrunner(IUnidadeDeRede):
    def __init__(self, nome:str, modelo_cyberdeck:str):
        self.nome = nome
        self.cyberdeck = Cyberdeck(modelo_cyberdeck)

    def executar_invasao(self):
        print(f"{self.nome} liga o cyberdeck: {self.cyberdeck.modelo} e está quebrando o gelo (ICE) de um servidor")

class DroneDeVigilancia(IUnidadeDeRede):
    def __init__(self, code:str):
        self.code = code

    def executar_invasao(self):
        print(f"Drone de vigilância {self.code} está interceptando o sinal da rede")

class CelulaHacker:
    def __init__(self, nome: str, membros: list[IUnidadeDeRede]):
        self.nome = nome
        self.membros = membros
    def iniciar_ataque(self):
        print(f"Célula {self.nome} iniciando o ataque em Night City!")

        for aliado in self.membros:
         aliado.executar_invasao()


if __name__ == "__main__":
    # AGREGAÇÃO: os membros são criados ANTES da célula e existem fora dela
    netrunner = OperadorNetrunner("Anonimus", "Arasaka Mk.4")
    drone = DroneDeVigilancia("R2-D2")

   
    celula = CelulaHacker("Eucarionte", [netrunner, drone])
    celula.iniciar_ataque()

    #u = IUnidadeDeRede()
    # TypeError: Can't instantiate abstract class IUnidadeDeRede without an implementation for abstract method 'executar_invasao'
    