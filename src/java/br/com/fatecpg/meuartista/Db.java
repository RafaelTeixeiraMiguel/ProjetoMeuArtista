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
            musica.add(new Musica("Acústico MTV"));
            musica.add(new Musica("Ao vivo 25 anos"));
            musica.add(new Musica("Até onde vai"));
            musica.add(new Musica("Charlie Brown Jr"));
            musica.add(new Musica("Charlie Brown Jr"));
            musica.add(new Musica("Charlie Brown Jr"));
            musica.add(new Musica("Charlie Brown Jr"));
            musica.add(new Musica("Charlie Brown Jr"));
        }
     return musica;
    }
        
        private static ArrayList<Disco> disco;
        public static ArrayList<Disco> getDisco(){
        if (disco == null){
            disco = new ArrayList<>();
            disco.add(new Disco("Acústico MTV"));
            disco.add(new Disco("Ao vivo 25 anos"));
            disco.add(new Disco("Até onde vai"));
            disco.add(new Disco("Meteora"));
            disco.add(new Disco("Abbey Road"));
            disco.add(new Disco("Calango"));
            disco.add(new Disco("Nunca tem fim"));
            disco.add(new Disco("1000 trutas 1000 tretas"));
        }
     return disco;

        
        }
}