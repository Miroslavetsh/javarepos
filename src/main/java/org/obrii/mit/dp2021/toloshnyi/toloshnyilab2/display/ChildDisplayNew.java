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
public class ChildDisplayNew extends ChildNewAbstractDisplay {

    public ChildDisplayNew(UserInterface userInterface) {
        super(userInterface);
    }

    @Override
    public String getAnotherMessage() {
        return "This is another message from user" + getUserInterface().getName();
    }

}
