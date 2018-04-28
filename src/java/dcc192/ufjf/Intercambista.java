package dcc192.ufjf;
        
public class Intercambista {
    String nome;
    String paisOrigem;
    String idiomas;

    public Intercambista() {
    }

    public Intercambista(String nome, String paisOrigem, String idiomas) {
        this.nome = nome;
        this.paisOrigem = paisOrigem;
        this.idiomas = idiomas;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getPaisOrigem() {
        return paisOrigem;
    }

    public void setPaisOrigem(String paisOrigem) {
        this.paisOrigem = paisOrigem;
    }

    public String getIdiomas() {
        return idiomas;
    }

    public void setIdiomas(String idiomas) {
        this.idiomas = idiomas;
    }

    @Override
    public String toString() {
        return "nome=" + nome + ", paisOrigem=" + paisOrigem + ", idiomas=" + idiomas + '}';
    }
    
    
    
}
