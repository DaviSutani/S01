import java.util.*;
// COMPOSIÇÃO: a Panela é criada dentro do construtor do Cozinheiro e só existe junto com ele.
// AGREGAÇÃO: os Monstros são criados fora (no main) e o Cozinheiro só guarda referências a eles.
 
abstract class Monstro {
  private String nome;
  public Monstro(String nome) {
      this.nome = nome;
    }
    public String getNome() {
      return nome;
    }
  public abstract String receita();
}
class Slime extends Monstro {
 
  public Slime(String nome) {
    super(nome);
  }
  @Override
  public String receita() {
    return "o slime seco entra no caldo junto com algas, o escorpião gigante e o cogumelo andante, e tudo cozinha em fogo baixo.";
  }
}
class Mandragora extends Monstro {
 
    public Mandragora(String nome) {
      super(nome);
    }
    @Override
    public String receita() {
      return "a mandrágora picada é refogada com bacon de basilisco, temperada com sal e pimenta e servida dentro de um omelete de ovo de basilisco, com ketchup.";
    }
}
class Panela {
    private String material;
    public Panela(String material) {
      this.material = material;
    }
    public String getMaterial() {
      return material;
    }
}
 
class Cozinheiro {
    private String nome;
    private Panela panela;
    private ArrayList<Monstro> ingredientes;
 
    public Cozinheiro(String nome, String materialDaPanela) {
        this.nome = nome;
        this.panela = new Panela(materialDaPanela);
        this.ingredientes = new ArrayList<>();
    }
    public void adicionarIngrediente(Monstro monstro) {
        ingredientes.add(monstro);
    }
    public void servirBanquete() {
        System.out.println("O Cozinheiro " + nome +", vai ser responsavel pelo banquete! utilizando uma panela de "+ panela.getMaterial());
        for (Monstro monstro : ingredientes) {
            System.out.println("Receita " +monstro.getNome()+ " "+ monstro.receita());
        }
    }
}
public class Main {
    public static void main(String[] args) {
        Monstro slime = new Slime("| Hot Pot de Escorpião Gigante e Cogumelo Andante com slime seco:");
        Monstro mandragora = new Mandragora("| Omelete de obelisco com mandrágora:");
        Cozinheiro senshi = new Cozinheiro("Senshi", "ferro");
        senshi.adicionarIngrediente(slime);
        senshi.adicionarIngrediente(mandragora);
        senshi.servirBanquete();
    }
}
