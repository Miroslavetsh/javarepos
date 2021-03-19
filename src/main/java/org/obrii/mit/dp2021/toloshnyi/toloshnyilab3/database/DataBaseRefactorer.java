package org.obrii.mit.dp2021.toloshnyi.toloshnyilab3.database;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import org.obrii.mit.dp2021.toloshnyi.toloshnyilab3.data.DataStorageRefactorerInterface;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.obrii.mit.dp2021.toloshnyi.toloshnyilab3.data.Data;

public class DataBaseRefactorer implements DataStorageRefactorerInterface {

    public DataBaseRefactorer() {

    }

    @Override
    public void createDataList(Data data) {
        
        String insertStatement;
        insertStatement = "insert into users(patreon, name, age, email, subscribed, notification, likes, dislikes, comment) values('"+
                data.getPatreon() + "'," + "'" +
                data.getName() + "'," +
                data.getAge() + ",'" +
                data.getEmail()+ "'," + "'" + 
                data.getSubscribed()+ "'," + "'" + 
                data.getNotification()+ "'," + 
                data.getLikes() + "," + 
                data.getDislikes()+ "," + "'" +
                data.getComment()+ "')";
        
        
        try(Connection connection = PostgreConnection.connect()) {
            Statement statement;
            
            statement = connection.createStatement();
            statement.executeUpdate(insertStatement);
        } catch (SQLException ex) {
            Logger.getLogger(DataBaseRefactorer.class.getName()).log(Level.SEVERE, null, ex);
        }
        
    }

    @Override
    public List<Data> readDataList() {
        
        List<Data> dataList = new ArrayList<>();
        
        try(Connection connection = PostgreConnection.connect()) {
            Statement statement;
            statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery("select * from users");
            
            while(resultSet.next()) {
            dataList.add(new Data(
                    Integer.parseInt(resultSet.getString(1)),
                    resultSet.getString(2), 
                    resultSet.getString(3),
                    Integer.parseInt(resultSet.getString(4)),
                    resultSet.getString(5),
                    resultSet.getString(6),
                    resultSet.getString(7),
                    Integer.parseInt(resultSet.getString(8)),
                    Integer.parseInt(resultSet.getString(9)),
                    resultSet.getString(10)
            ));
        }
        } catch (SQLException ex) {
            Logger.getLogger(DataBaseRefactorer.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return dataList;
    }

    @Override
    public void updateDataList(int id, Data data) {
        String updateStatement;
        updateStatement = "update users'" +
                "set patreon='" + data.getPatreon() + "'," +
                "name='" +data.getName() + "'," +
                "age=" + data.getAge() + "," +
                "email='" + data.getEmail()+ "," +
                "subscribed='" + data.getSubscribed() + "'," +
                "notification='" + data.getNotification() + "'," +
                "likes=" + data.getLikes() + "," +
                "dislikes=" + data.getDislikes() + "," +
                "comment='" + data.getComment()+ "' where id =" + id;
        
        
        try(Connection connection = PostgreConnection.connect()) {
            Statement statement;
            
            statement = connection.createStatement();
            statement.executeUpdate(updateStatement);
        } catch (SQLException ex) {
            Logger.getLogger(DataBaseRefactorer.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    public void deleteDataList(int id) {
        String deleteStatement;
        
        deleteStatement = "delete from users where id="+id;
                
        try(Connection connection = PostgreConnection.connect()) {
            Statement statement;
            
            statement = connection.createStatement();
            statement.executeUpdate(deleteStatement);
        } catch (SQLException ex) {
            Logger.getLogger(DataBaseRefactorer.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
