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
            banda.add(new Banda("JotaQuest"));
            banda.add(new Banda("Linkin Park"));
            banda.add(new Banda("Beatles"));
            banda.add(new Banda("Skank"));
            banda.add(new Banda("O Rappa"));
            banda.add(new Banda("Racionais Mcs"));
        }
        return banda;
    } 
}
