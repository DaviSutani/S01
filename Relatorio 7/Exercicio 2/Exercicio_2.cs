using System;
using System.Collections.Generic;

public class pokemons{

    public string especie {get; private set;}
    public int nivel {get; private set;}

    public pokemons(string especie, int nivel){
        this.especie = especie;
        this.nivel = nivel;
    }

    public virtual void Atacar(){
        Console.WriteLine($"{especie} atacou!");
    }

}

public class TipoPlanta : pokemons{

    public TipoPlanta(string especie, int nivel) : base(especie, nivel){}

    public override void Atacar(){
        Console.WriteLine($"{especie} atacou com um ataque do tipo planta!");
    }

}

public class TipoEletrico : pokemons{

    public TipoEletrico(string especie, int nivel) : base(especie, nivel){}

    public override void Atacar(){
        Console.WriteLine($"{especie} atacou com um ataque do tipo Eletrico!");
    }

}

public class Program{
    public static void Main(string[] args){
        List<pokemons> pokemons = new List<pokemons>();
        pokemons.Add(new pokemons("Arceus", 1));
        pokemons.Add(new TipoPlanta("Bulbasaur", 5));
        pokemons.Add(new TipoEletrico("Pikachu", 10));
        foreach(pokemons pokemon in pokemons){
            pokemon.Atacar();
        }
    }
}