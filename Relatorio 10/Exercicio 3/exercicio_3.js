class FichaDeCriatura {
  constructor(criatura, nivelDePerigo) {
    this.criatura = criatura;
    this.nivelDePerigo = nivelDePerigo;
  }

  descrever() {
    return `A criatura: ${this.criatura} tem o nivel de perigo ${this.nivelDePerigo}`;
  }
}
class DiarioMisterioso {
  #fichas;
  constructor(numero) {
    this.numero = numero;
    this.#fichas = [];
  }
  // Composição: DiarioMisterioso cria suas FichaDeCriatura dentro de anotar(),as fichas nascem e morrem com o diário.
  anotar(criatura, nivelDePerigo) {
    this.#fichas.push(new FichaDeCriatura(criatura, nivelDePerigo));
  }
  exibirFichas() {
    console.log(`O numero do diario encontrado é: ${this.numero}`);
    this.#fichas.forEach((i) => {
      console.log(i.descrever());
    });
  }
}
class Funcionario {
  constructor(nome, cargo) {
    this.nome = nome;
    this.cargo = cargo;
  }
}
class CabanaDoMisterio {
  #funcionarios;
  constructor(dono) {
    this.dono = dono;
    this.#funcionarios = [];
  }
  // Agregação: CabanaDoMisterio só recebe Funcionario prontos em contratar(), eles existem independentemente dela.
  contratar(funcionario) {
    this.#funcionarios.push(funcionario);
  }
  abrirAsPortas() {
    console.log(`O dono da cabana é: ${this.dono}`);
    this.#funcionarios.forEach((i) => {
      console.log(
        `Seus funcionarios são: ${i.nome} trabalhando como: ${i.cargo}`,
      );
    });
  }
}

diario_7 = new DiarioMisterioso(7);
diario_7.anotar(`Piramede do mal`, 10);
diario_7.anotar(`Alien`, 3);
diario_7.exibirFichas();

SoosRaimerez = new Funcionario(`Soos-Raimerez`, `Gerente`);
Maybel = new Funcionario(`Maybel`, `Faxineira`);

cabana = new CabanaDoMisterio(`Vovo Stan`);

cabana.contratar(SoosRaimerez);
cabana.contratar(Maybel);
cabana.abrirAsPortas();
