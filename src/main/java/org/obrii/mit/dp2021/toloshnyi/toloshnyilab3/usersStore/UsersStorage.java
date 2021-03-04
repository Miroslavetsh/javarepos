/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.obrii.mit.dp2021.toloshnyi.toloshnyilab3.usersStore;

import java.util.ArrayList;
import java.util.List;
import org.obrii.mit.dp2021.toloshnyi.toloshnyilab3.data.Data;

/**
 *
 * @author gxufh
 */
public class UsersStorage {

    private static UsersStorage usersStorage = new UsersStorage();
    private static List<Data> dataList;

    private UsersStorage() {
        dataList = new ArrayList<>();
        dataList.add(new Data(0, "patreon", "Myroslav", 18, "dfgshte@gmail.com", "no", "on", 11, 23, "My comment"));
    }

    public static UsersStorage getUser() {
        return usersStorage;
    }

    public static List<Data> getUsersStorage() {
        return dataList;
    }
}
