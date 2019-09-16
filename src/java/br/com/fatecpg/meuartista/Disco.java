package br.com.fatecpg.meuartista;

/**
 *
 * @author Rafael Teixeira Miguel
 */

public class Disco {
    private String  nome;
    private String autor;
    private int ano;

    public Disco(String nome, String autor, int ano) {
        this.nome = nome;
        this.ano = ano;
        this.autor = autor;
    }

    public void setAutor(String autor) {
        this.autor = autor;
    }

    public String getAutor() {
        return autor;
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
