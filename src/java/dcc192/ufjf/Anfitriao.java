package dcc192.ufjf;
        
public class Anfitriao {
    String nome;
    String tipoMoradia;
    String descricao;
    String disponivel; //(S ou N)
    String telefone; //(S ou N)

    public Anfitriao() {
    }

    public Anfitriao(String nome, String tipoMoradia, String descricao, String disponivel, String telefone) {
        this.nome = nome;
        this.tipoMoradia = tipoMoradia;
        this.descricao = descricao;
        this.disponivel = disponivel;
        this.telefone = telefone;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getTipoMoradia() {
        return tipoMoradia;
    }

    public void setTipoMoradia(String tipoMoradia) {
        this.tipoMoradia = tipoMoradia;
    }

    public String getDescricao() {
        return descricao;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }

    public String getDisponivel() {
        return disponivel;
    }

    public void setDisponivel(String disponivel) {
        this.disponivel = disponivel;
    }

    public String getTelefone() {
        return telefone;
    }

    public void setTelefone(String telefone) {
        this.telefone = telefone;
    }
    
    @Override
    public String toString() {
        return "nome=" + nome + ", tipoMoradia=" + tipoMoradia + ", descricao=" + descricao + ", disponivel=" + disponivel + '}';
    }
    
}
