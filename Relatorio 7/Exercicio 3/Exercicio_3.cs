using System;
using System.Collections.Generic;

public class Grimorio{
    public string FeitiçoFavorito{get; private set;} = "Nenhum";
    public void Abrir(){
        Console.WriteLine("Abrindo o grimório...");
		Console.WriteLine($"Feitiço Favorito é: {FeitiçoFavorito}");
    }
    public void DefinirFeitiço(string feitiço){
        FeitiçoFavorito = feitiço;
    }
}
public class Companheiro{
    public string Nome {get; private set;}
    public string Funcao {get; private set;}
    public Companheiro(string nome, string funcao){
        Nome = nome;
        Funcao = funcao;
    }

    public void Apresentar(){
        Console.WriteLine($"Nome: {Nome}");
        Console.WriteLine($"Função: {Funcao}");
    }
}

public class Maga{
    public string Nome {get; private set;}
    public Grimorio Grimorio {get; private set;}
    private List<Companheiro> Companheiros;

    public Maga(string nome){
        Nome = nome;
        Grimorio = new Grimorio();
        Companheiros = new List<Companheiro>();
    }

    public void Recrutar(Companheiro companheiro){
        Companheiros.Add(companheiro);
    }

    public void MostrarGrupo(){
        foreach(Companheiro companheiro in Companheiros){
            companheiro.Apresentar();
        }
    }

}
public class Program{
    public static void Main(string[] args){
        Maga maga = new Maga("Luna");
        Companheiro companheiro1 = new Companheiro("Fawkes", "Fênix");
        Companheiro companheiro2 = new Companheiro("Shadow", "Lobo");
        
        maga.Recrutar(companheiro1);
        maga.Recrutar(companheiro2);

        maga.Grimorio.DefinirFeitiço("Buraco Negro Hiper-Massivo");
        maga.MostrarGrupo();
        maga.Grimorio.Abrir();
    }
}