#include <iostream>
using namespace std;

float calcular_confiabilidade_sistema(float probabilidades[],int tamanho){
    float resultado_final = 1;
    for(int i = 0; i< tamanho;i++){
       resultado_final *= probabilidades[i];
    }
    return resultado_final;
}


int main (){

    int entrada_n;
    cout << "Digite a quantidade de componentes do sistema: " << endl;
    cin >> entrada_n;
    float array[entrada_n];

    for(int i = 0; i < entrada_n; i++){
        cout << "Digite a probabilidade do componente "<< i + 1 <<" (ex:0.95): " << endl;
        cin >> array[i];
    }
    float resultado_final = calcular_confiabilidade_sistema(array,entrada_n);
    cout << "Confiabilidade total do sistema: " << resultado_final << " ("<<resultado_final*100<< "%)";

    return 0;

}