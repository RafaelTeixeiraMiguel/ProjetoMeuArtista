package br.com.fatecpg.meuartista;

/**
 *
 * @author Rafael Teixeira Miguel
 */
public class Musica {
    private String nome;
    private int idDisco;

    public int getIdDisco() {
        return idDisco;
    }

    public void setIdDisco(int idDisco) {
        this.idDisco = idDisco;
    }
    

    public Musica(String nome, int idDisco) {
        this.nome = nome;
        this.idDisco = idDisco;
    }
    

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }
    
}
