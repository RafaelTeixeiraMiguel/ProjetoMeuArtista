/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.fatecpg.meuartista;
import java.util.ArrayList;

/**
 *
 * @author AfonsoSantos
 */
public class Db {
    private static ArrayList<Banda> banda;
    public static ArrayList<Banda> getBanda(){
        if (banda == null){
            banda = new ArrayList<>();
            banda.add(new Banda("Charlie Brown Jr"));
            banda.add(new Banda("Exaltasamba"));
            banda.add(new Banda("Jota Quest"));
            banda.add(new Banda("Linkin Park"));
            banda.add(new Banda("Beatles"));
            banda.add(new Banda("Skank"));
            banda.add(new Banda("O Rappa"));
            banda.add(new Banda("Racionais Mcs"));
        }
        return banda;
    } 
    private static ArrayList<Musica> musica;
        public static ArrayList<Musica> getMusica(){
        if (musica == null){
            musica = new ArrayList<>();
            musica.add(new Musica("Musica 1", 0));
            musica.add(new Musica("Musica 2", 0));
            musica.add(new Musica("Até onde vai", 1));
            musica.add(new Musica("Musica 3", 1));
            musica.add(new Musica("Musica 4", 2));
            musica.add(new Musica("Musica 5", 2));
            musica.add(new Musica("Musica 6", 3));
            musica.add(new Musica("Musica 7", 3));
        }
     return musica;
    }
        
        private static ArrayList<Disco> disco;
        public static ArrayList<Disco> getDisco(){
        if (disco == null){
            disco = new ArrayList<>();
            disco.add(new Disco("Acústico MTV",  0, 1999));
            disco.add(new Disco("Ao vivo 25 anos", 0, 1998));
            disco.add(new Disco("Até onde vai", 1, 2000));
            disco.add(new Disco("Meteora",1, 2003));
            disco.add(new Disco("Abbey Road", 2, 1995));
            disco.add(new Disco("Calango",2, 1993));
            disco.add(new Disco("Nunca tem fim",3, 1995));
            disco.add(new Disco("1000 trutas 1000 tretas",3,2006));
        }
     return disco;

        
        }
}
