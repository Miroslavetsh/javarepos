/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.obrii.mit.dp2021.toloshnyi.toloshnyilab3.data;

import java.util.List;

/**
 *
 * @author gxufh
 */
public interface DataStorageRefactorerInterface {

    void createDataList(Data data);

    void deleteDataList(int id);

    List<Data> readDataList();

    void updateDataList(int id, Data data);
    
}
