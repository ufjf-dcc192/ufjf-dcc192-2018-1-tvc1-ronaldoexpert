package dcc192.ufjf;
        
public class Hospedagem {
    Anfitriao anfitriao;
    Intercambista intercambista;
    String dataInicio;
    String dataFim; 

    public Hospedagem() {
    }

    public Hospedagem(Anfitriao anfitriao, Intercambista intercambista, String dataInicio, String dataFim) {
        this.anfitriao = anfitriao;
        this.intercambista = intercambista;
        this.dataInicio = dataInicio;
        this.dataFim = dataFim;
    }

    public Anfitriao getAnfitriao() {
        return anfitriao;
    }

    public void setAnfitriao(Anfitriao anfitriao) {
        this.anfitriao = anfitriao;
    }

    public Intercambista getIntercambista() {
        return intercambista;
    }

    public void setIntercambista(Intercambista intercambista) {
        this.intercambista = intercambista;
    }

    public String getDataInicio() {
        return dataInicio;
    }

    public void setDataInicio(String dataInicio) {
        this.dataInicio = dataInicio;
    }

    public String getDataFim() {
        return dataFim;
    }

    public void setDataFim(String dataFim) {
        this.dataFim = dataFim;
    }

    @Override
    public String toString() {
        return "anfitriao=" + anfitriao.getNome() + ", intercambista=" + intercambista.getNome() + ", dataInicio=" + dataInicio + ", dataFim=" + dataFim + '}';
    }
    
    
}
