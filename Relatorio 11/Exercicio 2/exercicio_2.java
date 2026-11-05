import java.util.*;

class ItemDoCardapio{
  private String nome;
  private double preco;

  public ItemDoCardapio(String nome, double preco){
    this.nome = nome;
    this.preco = preco;
  }

  public String getNome(){
    return nome;
  }
  public double getPreco(){
    return preco;
  }

  public double precoFinal(){
    return preco;
  }
}

class ComboLeblanc extends ItemDoCardapio{
  public ComboLeblanc(String nome, double preco){
    super(nome,preco);
  }

  @Override
  public double precoFinal(){
    return getPreco()*0.9;
  }
}

class CafeLeblanc{
  private ArrayList<ItemDoCardapio> cardapio;

  public CafeLeblanc(){ 
    this.cardapio = new ArrayList<>();
  }
  public void adicionar(ItemDoCardapio item){
    this.cardapio.add(item);
  }

  public void mostrarCardapio(){
    for(ItemDoCardapio item : cardapio){
      System.out.println(item.getNome() + " Preço: R$ " + item.precoFinal());
    }
  }
}

public class Main{
  public static void main(String[] args){
    ItemDoCardapio pao_de_queijo = new ItemDoCardapio("Pão de queijo artesanal com recheio de pernil.", 15.0);
    ItemDoCardapio cafe_preto = new ItemDoCardapio("Cafezinho preto coado na hora!", 5.0);
    ItemDoCardapio cafe_da_manha = new ComboLeblanc("Pão de queijo artesanal com recheio de pernil acompanhado com Cafe preto coado na hora!", 18.0);

    CafeLeblanc leblanc= new CafeLeblanc();
    leblanc.adicionar(pao_de_queijo);
    leblanc.adicionar(cafe_preto);
    leblanc.adicionar(cafe_da_manha);

    leblanc.mostrarCardapio();
  }
}