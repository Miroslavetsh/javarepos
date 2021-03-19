package org.obrii.mit.dp2021.toloshnyi.toloshnyilab3.database;

import java.sql.Connection;
import java.sql.DriverManager;

public class PostgreConnection {
    
    public static Connection connect() {
        Connection c = null;
        
        try {
            Class.forName("org.postgresql.Driver");
            c = DriverManager.getConnection("jdbc:postgresql://obrii.org:5432/db2021mit21s16", 
                    "s16", "7220");
        } catch (Exception e) {
            e.printStackTrace();
            System.err.println(e.getClass().getName() + ": " + e.getMessage());
            System.exit(0);
        }
        
        return c;
    }
}
