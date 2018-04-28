package dcc192.ufjf;


import java.util.ArrayList;
import java.util.List;


public class ListaDeAnfitrioes {
    private static List<Anfitriao> anfitrioes;
    
    public static List<Anfitriao> getInstance(){
        if(anfitrioes == null){
            anfitrioes = new ArrayList<>();
            anfitrioes.add(new Anfitriao("Ronaldo S.", "Apartamento", "1 quarto mobiliado", "S"));
            anfitrioes.add(new Anfitriao("André R.", "Apartamento", "2 quartos mobiliados", "S"));
            anfitrioes.add(new Anfitriao("Thais T.", "Casa", "1 quarto sem mobilia", "S"));
            anfitrioes.add(new Anfitriao("Raquel F.", "Casa", "Área comum com 2 conchões de solteiro", "N"));
            anfitrioes.add(new Anfitriao("Vania B.", "Casa", "1 quarto mobiliado", "N"));
        }
        return anfitrioes;
    }
}
