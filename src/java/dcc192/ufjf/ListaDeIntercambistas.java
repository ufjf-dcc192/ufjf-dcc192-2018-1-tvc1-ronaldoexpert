package dcc192.ufjf;


import java.util.ArrayList;
import java.util.List;


public class ListaDeIntercambistas {
    private static List<Intercambista> intercambistas;
    
    public static List<Intercambista> getInstance(){
        if(intercambistas == null){
            intercambistas = new ArrayList<>();
            intercambistas.add(new Intercambista("Robert", "Inglaterra", "Ingles"));
            intercambistas.add(new Intercambista("Harry", "Inglaterra", "Ingles"));
            intercambistas.add(new Intercambista("Pablo", "Colombia", "Espanhol"));
            intercambistas.add(new Intercambista("David", "França", "Frances/Ingles"));
        }
        return intercambistas;
    }
}
