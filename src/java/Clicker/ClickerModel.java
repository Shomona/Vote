/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Clicker;

import java.util.Map;
import java.util.TreeMap;

/**
 *
 * @author shomonamukherjee
 */
public class ClickerModel {

    Map<String, Integer> vmap;

    public ClickerModel() {
        vmap = new TreeMap<>();
    }

    //Register the vote
    public boolean vote(String vote) {

        //If vote already exists
        //get the existing vote and increase it
        if (vmap.containsKey(vote)) {
            int currentVotes = vmap.get(vote);
            currentVotes++;
            vmap.put(vote, currentVotes);
        }
        //If vote doesn't exist create a key and assign the first vote
        else {
            vmap.put(vote, 1);
        }

        return true;
    }

    //To clear the hash tree
    public void clear() {
        vmap.clear();
    }

}