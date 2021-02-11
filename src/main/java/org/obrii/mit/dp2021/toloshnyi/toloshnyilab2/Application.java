/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.obrii.mit.dp2021.toloshnyi.toloshnyilab2;

import org.obrii.mit.dp2021.toloshnyi.toloshnyilab2.user.User;
import org.obrii.mit.dp2021.toloshnyi.toloshnyilab2.user.OldInterface;
import org.obrii.mit.dp2021.toloshnyi.toloshnyilab2.display.OldDisplayInterface;
import org.obrii.mit.dp2021.toloshnyi.toloshnyilab2.display.ChildDisplay;
import org.obrii.mit.dp2021.toloshnyi.toloshnyilab2.display.Display2;

/**
 *
 * @author gxufh
 */
public class Application {
    
    public static void main (String[] args) {
        OldInterface user = new User("Myroslav");
        OldDisplayInterface display = new ChildDisplay();
        
        if (display instanceof ChildDisplay) {
            System.out.println(((ChildDisplay)display).showAnotherUser());
        }
        
        System.out.println(display.showUser(user));
        
        display = new Display2();
        
        System.out.println(display.showUser(user));
    }
}