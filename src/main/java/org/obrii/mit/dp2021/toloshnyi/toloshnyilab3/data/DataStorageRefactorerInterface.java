package org.obrii.mit.dp2021.toloshnyi.toloshnyilab3.data;

import java.util.List;

public interface DataStorageRefactorerInterface {

    void createDataList(Data data);

    List<Data> readDataList();

    void updateDataList(int id, Data data);

    void deleteDataList(int id);
}
