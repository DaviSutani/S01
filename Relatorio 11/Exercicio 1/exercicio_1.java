import java.util.*;

abstract class Morador{
  private String nome;
  public Morador(String nome){
    this.nome = nome;
  }

  public String getNome(){
    return this.nome;
  } 

  public abstract void apresentar();
}
class Mago extends Morador{
  private String feitico;
  public Mago(String nome, String feitico){
    super(nome);
    this.feitico = feitico;
  }
  @Override
  public void apresentar(){
    System.out.println("Saudacoes jovem. Me chamo " + getNome() + ".Minha magia mais forte é o feitico: "+feitico);
  }
}

class DemonioDoFogo extends Morador{
  public DemonioDoFogo(String nome){
    super(nome);
  }
  @Override
  public void apresentar(){
    System.out.println("Meu nome é "+getNome() + ". Responsavel por fazer o castelo andar.");
  }
}

public class Main {
  public static void main(String[] args){
    Morador merlin = new Mago("Merlin","transfiguração de Uther Pendragon");
    DemonioDoFogo belzebu = new DemonioDoFogo("Belzebu");

    merlin.apresentar();
    belzebu.apresentar();
    
    //Morador percival = new Morador("Percival", "Hope");
    //Main.java:44: error: Morador is abstract; cannot be instantiated
 
  }
}