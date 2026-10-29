class Pistola{
    constructor(modelo){
        this.modelo = modelo;
    }
}
class AgenteProtocolo{

    #Pistola;
    constructor(codinome, modeloDaPistola){
        this.codinome = codinome;
        this.#Pistola = new Pistola(modeloDaPistola);
    }

    usarhabilidade(){
        throw new Error(`O agente ${this.codinome} deve implementar um método`);

    }

    entrarEmCombate(){
        console.log(`${this.codinome} entrou em combate usando a pistola ${this.#Pistola.modelo}`);
        console.log(`Utilizando: ${this.usarhabilidade()}`);
    }
}

class Controlador extends AgenteProtocolo{
    usarhabilidade(){
        return (`WELCOME TO MY WORD!`);
    }
}
class Iniciador extends AgenteProtocolo{
    usarhabilidade(){
        return (`ENCARE SEU MEDO!`);
    }
}
class Duelista extends AgenteProtocolo{
    usarhabilidade(){
        return (`GET OUT OF MY WAY!`);
    }
}

class Esquadrao{
    #agentes;
    constructor(nome, agentes){
        this.nome = nome;
        this.#agentes = agentes;
    }

    iniciarPartida(){
        console.log(`A ORG ${this.nome} entrou`);
        this.#agentes.forEach(agente => {
            agente.entrarEmCombate();
        });
    }

    listarControladores(){
        return this.#agentes.filter(agente => agente instanceof Controlador);
    }
}

omen = new Controlador (`Omen`,`Ghost`);// controlador
viper = new Controlador (`Viper`,`Shorty`);// controlador
fade = new Iniciador(`Fade`, `Ghost`);// iniciador
jett =  new Duelista(`Jett`, `Sheriff`);// duelista

personagens = [omen,viper,fade,jett];

squad = new Esquadrao(`Loud`,personagens);

squad.iniciarPartida();

squad.listarControladores().forEach(agente => {
    console.log(`Os controladores do seu esquadrão são: ${agente.codinome} `);
});

veto = new AgenteProtocolo(`veto`, `Classic`);
veto.entrarEmCombate();
//throw new Error(`O agente ${this.codinome} deve implementar um método`);
//        ^
//
//Error: O agente veto deve implementar um método
