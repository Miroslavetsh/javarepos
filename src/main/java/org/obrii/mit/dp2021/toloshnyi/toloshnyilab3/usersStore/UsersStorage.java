package org.obrii.mit.dp2021.toloshnyi.toloshnyilab3.usersStore;

import java.util.ArrayList;
import java.util.List;
import org.obrii.mit.dp2021.toloshnyi.toloshnyilab3.data.Data;

public class UsersStorage {
    private static UsersStorage UsersStorageInstance = new UsersStorage();
    private static List<Data> data;
    
    private UsersStorage() {
        data = new ArrayList<>();
        data.add(new Data(0, "patreon", "Myroslav", 18, "dfgshte@gmail.com", "on", "on", 1135, 637, "My comment is three words"));
    }
    
    public static UsersStorage getUsersStorageInstance() {
        return UsersStorageInstance;
    }
    
    public static List<Data> getUsersStorage() {
        return data;
    }
}
