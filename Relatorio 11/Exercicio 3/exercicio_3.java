import java.util.*;

interface Sobrenatural{
  void manifestar();
}

class Alienigena implements Sobrenatural {
  private String nome;
  public Alienigena(String nome){
    this.nome = nome;
  }

  @Override
  public void manifestar(){
    System.out.println("O Alienigena " + nome + " apareceu embaixo da sua espaço nave!");
  }
}

class EspiritoYoukai implements Sobrenatural {
  private String nome;
  public EspiritoYoukai(String nome){
    this.nome = nome;
  }

  @Override
  public void manifestar(){
    System.out.println("O Youkai " + nome + " surgiu!");
  }
}

class MapaDeAvistamentos{
  private HashMap<String, Sobrenatural> avistamentos;
  public MapaDeAvistamentos(){
    this.avistamentos = new HashMap<>();
  }

  public void registrar(String local, Sobrenatural ser){
    this.avistamentos.put(local, ser);
  }

  public void investigar(String local){
    System.out.println("\nInvestigando: " + local + "...");
    Sobrenatural ser = avistamentos.get(local);

    if (ser == null) {
      System.out.println("Nenhum avistamento de atividade estranha. Está tranquilo.");
    } else {
      ser.manifestar();
    }
  }
}

public class Main{
  public static void main(String[] args) {
    Sobrenatural serpiano = new Alienigena("Serpo");
    Sobrenatural vovo = new EspiritoYoukai("Turbo Vovó");

    MapaDeAvistamentos mapa = new MapaDeAvistamentos();

    mapa.registrar("Hospital", serpiano);
    mapa.registrar("Túnel", vovo);

    mapa.investigar("Hospital");
    mapa.investigar("Túnel");
    mapa.investigar("Escola");
  }
}