/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.obrii.mit.dp2021.toloshnyi.toloshnyilab2.display;

import org.obrii.mit.dp2021.toloshnyi.toloshnyilab2.user.UserInterface;
/**
 *
 * @author gxufh
 */
public abstract class ChildNewAbstractDisplay extends Display implements NewDisplayInterface {
    
    public ChildNewAbstractDisplay(UserInterface userInterface) {
        super(userInterface);
    }
    
}
