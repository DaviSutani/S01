#include <iostream>
using namespace std;


int combinar_equipes(int n){

    if (n == 0) return 0;

    if (n == 1) return 1;

    if (n > 1){
       return combinar_equipes(n - 1) + combinar_equipes(n - 2);
    }
}

int main (){

    int entrada_n;
    cout << "Digite o tamanho do caveamento (n): " << endl;
    cin >> entrada_n;

    int resultado = combinar_equipes(entrada_n);

    cout << "Total de cenarios de confrontos possiveis: " << combinar_equipes(entrada_n);

    return 0;
}