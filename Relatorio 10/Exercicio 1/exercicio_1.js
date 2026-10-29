class Pokemon {
  #vidainicial;
  constructor(apelido, tipo, vidainicial) {
    this.apelido = apelido;
    this.tipo = tipo;
    this.#vidainicial = vidainicial;
  }

  get vida() {
    return this.#vidainicial;
  }

  sofrerDanos(pontos) {
    this.#vidainicial = this.#vidainicial - pontos;

    if (this.#vidainicial == 0 || this.#vidainicial < 0) {
      this.#vidainicial = 0;
    }

    console.log(`A vida atual do ${this.apelido} é: ${this.#vidainicial}`);
  }
  atacar(alvo) {
    console.log(`${this.apelido} vai atacar ${alvo.apelido}`);

    alvo.sofrerDanos(10);
  }
}

class Squirtle extends Pokemon {
  constructor(apelido, vidainicial) {
    super(apelido, "Agua", vidainicial);
  }
  atacar(alvo) {
    console.log(` ${this.apelido} usou Water Pulse em: ${alvo.apelido}`);
    alvo.sofrerDanos(20);
  }
}

class Bulbasaur extends Pokemon {
  constructor(apelido, vidainicial) {
    super(apelido, "Planta", vidainicial);
  }
  atacar(alvo) {
    console.log(` ${this.apelido} usou Seed Bomb em: ${alvo.apelido}`);
    alvo.sofrerDanos(15);
  }
}

squirtle = new Squirtle(`squirtle`, 25);
bulbasauro = new Bulbasaur(`bulbasauro`, 30);

bulbasauro.atacar(squirtle);

squirtle.atacar(bulbasauro);
squirtle.atacar(bulbasauro);

console.log(
  `Após os ataques de bulbasauro, a vida de squirtle é: ${squirtle.vida}`,
);
console.log(
  `Após os ataques de squirtle, a vida de bulbasauro é: ${bulbasauro.vida}`,
);
