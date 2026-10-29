class UsuarioDeNen {
  constructor(nome) {
    this.nome = nome;
  }
  atacar(alvo) {
    console.log(`${this.nome} atacou seu alvo ${alvo.nome}`);
  }
}
class Intensificador extends UsuarioDeNen {
  atacar(alvo) {
    console.log(
      `O usuario de nen intensificador: ${this.nome} intesificou seu ataque de atacou ${alvo.nome}`,
    );
  }
}
class Transmutador extends UsuarioDeNen {
  atacar(alvo) {
    console.log(
      `O usuario de nen transmutador: ${this.nome} transmutou seu corpo e atacou ${alvo.nome}`,
    );
  }
}
class Materializador extends UsuarioDeNen {
  atacar(alvo) {
    console.log(
      `O usuario de nen materializador ${this.nome} materializou correntes e atacou ${alvo.nome}`,
    );
  }
}
class Aranha {
  constructor(nome, numero) {
    this.nome = nome;
    this.numero = numero;
  }
}
class TrupeFantasma {
  #Aranhas;
  constructor(cidade, aranhas = []) {
    this.cidade = cidade;
    this.#Aranhas = aranhas;
  }

  revelarAranhas() {
    console.log(`A cidade ${this.cidade} tem as aranhas de numero: `);
    this.#Aranhas.forEach((aranha) => {
      console.log(`${aranha.numero} sendo seu nome: ${aranha.nome}`);
    });
  }

  buscarAranha(numero) {
    return this.#Aranhas.find((aranha) => aranha.numero === numero);
  }
}

Chroll = new Aranha(`Chrollo Lucilfer`, 0);
Machi = new Aranha(`Machi Komacine`, 3);

Genei = new TrupeFantasma(`Meteor City`, [Chroll, Machi]);

Genei.revelarAranhas();

auxiliar = Genei.buscarAranha(0);

nen = [
  new Transmutador(`Killua Zoldyck`),
  new Intensificador(`Gon Freecss`),
  new Materializador(`Kurapika`),
];
nen.forEach((personagem) => {
  personagem.atacar(auxiliar);
});
