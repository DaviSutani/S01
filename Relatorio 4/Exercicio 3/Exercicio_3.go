package main
import "fmt"

func gerarEscalaPlantao(entrada int){
	var dia int
	var cont int
	dia = 1
	cont = 1
	fmt.Printf("--- Escala de Plantao Tecnico ---\n")
	for cont <= entrada {
		fmt.Printf("Plantao %d: Dia %d do mes\n",cont,dia)
		dia+=4
		cont++
	}
}
func main() {
	var entrada int
	fmt.Printf("Digite a quantidade de plantoes necessarios: \n")
	fmt.Scanln(&entrada)
	gerarEscalaPlantao(entrada)
}