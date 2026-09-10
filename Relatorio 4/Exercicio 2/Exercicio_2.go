package main
import "fmt"

func main(){
	var v1 int //v = venda
	var v2 int
	var v3 int

	fmt.Printf("Digite as vendas do 1° trimestre:\n")
	fmt.Scanln(&v1)

	fmt.Printf("Digite as vendas do 2° trimestre:\n")
	fmt.Scanln(&v2)

	fmt.Printf("Digite as vendas do 3° trimeste:\n")
	fmt.Scanln(&v3)
	var soma_vendas = v1 + v2 + v3

	fmt.Printf("Total de vendas: %d unidades\n", soma_vendas)

	if soma_vendas < 100 {
		fmt.Printf("Meta minima anual nao atingida!\n")
	} else {
		switch{
			case soma_vendas >= 250:
				fmt.Printf("Categoria Top Seller\n")
			case soma_vendas >= 180 && soma_vendas <= 249:
				fmt.Printf("Categoria Senior\n")
			case soma_vendas >= 100 && soma_vendas <= 179:
				fmt.Printf("Categoria Pleno\n")
		}
	}
}