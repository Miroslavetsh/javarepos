package org.obrii.mit.dp2021.toloshnyi.toloshnyilab3.usersStore;

import org.obrii.mit.dp2021.toloshnyi.toloshnyilab3.data.DataStorageRefactorerInterface;
import java.util.List;
import org.obrii.mit.dp2021.toloshnyi.toloshnyilab3.data.Data;

public class UsersStoreRefactorer implements DataStorageRefactorerInterface {
    // C - create
    // R - read
    // U - update
    // D - delete
    
    // Getting our data in List format from UsersStore
    private List<Data> dataList = UsersStorage.getUsersStorage();
    
    public UsersStoreRefactorer () {
    }
    
    @Override
    public void createDataList(Data data) {
        data.setId(dataList.size());
        dataList.add(data);
    }
    
    @Override
    public List<Data> readDataList() {
        return dataList;
    }
    
    @Override
    public void updateDataList(int id, Data data) {
        data.setId(id);
        dataList.set(id, data);
    }
    
    @Override
    public void deleteDataList(int id) {
        dataList.remove(id);
    }
}
