package dcc192.ufjf;


import java.util.ArrayList;
import java.util.List;


public class ListaDeHospedagens {
    private static List<Hospedagem> hospedagens;
    
    public static List<Hospedagem> getInstance(){
        if(hospedagens == null){
            hospedagens = new ArrayList<>();
            hospedagens.add(new Hospedagem(ListaDeAnfitrioes.getInstance().get(0), ListaDeIntercambistas.getInstance().get(0), "01/04/2018", "07/04/2018"));
            hospedagens.add(new Hospedagem(ListaDeAnfitrioes.getInstance().get(0), ListaDeIntercambistas.getInstance().get(1), "01/04/2018", "07/04/2018"));
        }    
        return hospedagens;
    }
}
