#include <iostream>
using namespace std;


int main (){

    float capacidade_max;
    float peso_atual = 0;
    float auxiliar;
    int escolha;
    bool menu = true;
    cin >> capacidade_max;

    while (menu){
        cout << "=== SISTEMA DE CARGA DO DRONE ===" << endl;
        cout << "1. Verificar Carga" << endl;
        cout << "2. Carregar Pacote" << endl;
        cout << "3. Descarregar Pacote" << endl;
        cout << "4. Encerrar Operacao" << endl;
        cout << "Escolha uma opcao: ";
        cin >> escolha;

        switch(escolha){
        case 1:
            cout << "Carga Atual: "<<peso_atual<<" kg / "<<capacidade_max<<" kg" << endl;
            cout << "Espaco Disponivel: "<<capacidade_max-peso_atual<<" kg" << endl;
            break;
        case 2:
            cout << "Digite o peso do pacote a ser carregado (kg): ";
            cin >> auxiliar;
            if(auxiliar + peso_atual > capacidade_max){
                cout << "Alerta: Peso maximo de decolagem excedido! Operacao cancelada." << endl;
            }
            else{
                peso_atual += auxiliar;
                cout << "Pacote adicionado com sucesso!" << endl;
            }
            break;
        case 3:
            cout << "Digite o peso do pacote a ser carregado (kg): ";
            cin >> auxiliar;
            if(peso_atual-auxiliar < 0){
                cout << "Alerta: Nao e possivel remover mais alem do que existe atualmente! Operacao cancelada." << endl;
            }
            else{
                peso_atual-=auxiliar;
                cout << "Pacote descarregado com sucesso!" << endl;
            }
            break;
        case 4:
            cout << "Encerrando sistema de telemetria..." << endl;
            menu = false;
            break;
        }
    }

    return 0;
}