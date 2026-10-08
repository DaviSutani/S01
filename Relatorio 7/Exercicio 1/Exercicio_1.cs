using System;
using System.Collections.Generic;

public class CombatenteDeCondor{
    public string Nome {get; private set;}
    public string Povo {get; private set;}
    public string Posto {get; private set;}

    public string Armamento {get; private set; } = "Desarmado";

    public CombatenteDeCondor(string nome, string povo, string posto){
        Nome = nome;
        Povo = povo;
        Posto = posto;
    }

    public void Equipar(string armamento){
        Armamento = armamento;
    }

    public void ApresentarUnidade(){
        Console.WriteLine($"Nome: {Nome}");
        Console.WriteLine($"Povo: {Povo}");
        Console.WriteLine($"Posto: {Posto}");
        
        if (Armamento != "Desarmado"){
            Console.WriteLine($"Armamento: {Armamento}");
        }
    }

}

public class Program{
    public static void Main(string[] args){
        CombatenteDeCondor combatente1 = new CombatenteDeCondor("Diego","Hobbits","Rei Andante");
        CombatenteDeCondor combatente2 = new CombatenteDeCondor("João","Anões","Soldado");
        CombatenteDeCondor combatente3 = new CombatenteDeCondor("Maria","Elfos","Soldado");

        combatente1.Equipar("Espada");
        combatente2.Equipar("Arco e Flecha");

        combatente1.ApresentarUnidade();
        combatente2.ApresentarUnidade();
        combatente3.ApresentarUnidade();

        //combatente3.Posto = "Capitão"; Nao funciona pq o private set nao deixa alterar manualmente pela main
    	}
}