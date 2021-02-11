/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.obrii.mit.dp2021.toloshnyi.toloshnyilab2.display;

import org.obrii.mit.dp2021.toloshnyi.toloshnyilab2.user.OldInterface;

/**
 *
 * @author gxufh
 */
public class Display2 extends Display implements OldDisplayInterface {
    
    @Override
    public String showUser(OldInterface oldInterface) {
        return "" + oldInterface;
    }
}
