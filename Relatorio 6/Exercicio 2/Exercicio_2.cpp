#include<iostream>
using namespace std;

class LinkSocial{
    private:
        string nome;
        string arcana;
        int rank;
    public:
        void setLink(string n, string a, int r){
            nome = n;
            arcana = a;
            rank = r;
        }
        string getNome(){return nome;}
        string getArcana(){return arcana;}
        int getRank(){return rank;}
        void subirRank(){rank++;}
};

int main(){
    LinkSocial perso;
    string nome_aux;
    string arcana_aux;
    int rank_aux;

    getline(cin >> ws, nome_aux);
    getline(cin >> ws, arcana_aux);
    cin >> rank_aux;
    perso.setLink(nome_aux,arcana_aux,rank_aux);
    perso.subirRank();

    cout << "Dados do perso: " << endl;
    cout << "Nome - " << perso.getNome() << endl;
    cout << "Arcana - " << perso.getArcana() << endl;
    cout << "Rank - " << perso.getRank() << endl;

}