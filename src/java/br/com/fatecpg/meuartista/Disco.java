package br.com.fatecpg.meuartista;

/**
 *
 * @author Rafael Teixeira Miguel
 */

public class Disco {
    private String  nome;
    private int idAutor;
    private int ano;

    public Disco(String nome, int autor, int ano) {
        this.nome = nome;
        this.ano = ano;
        this.idAutor = autor;
    }

    public int getIdAutor() {
        return idAutor;
    }

    public void setIdAutor(int idAutor) {
        this.idAutor = idAutor;
    }

    public void setAno(int ano) {
        this.ano = ano;
    }

    public int getAno() {
        return ano;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }
    
}
