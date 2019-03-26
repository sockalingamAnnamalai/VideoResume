package com.jobseeker;

import java.sql.Connection;
import java.sql.DriverManager;
public class Connector {
    static Connection conn=null;
    public static Connection getConnection() {
    try {
        Class.forName("com.mysql.jdbc.Driver");
        conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb","root","root");    
        
        
    }
    catch(Exception e)
    {
        
    }
    return conn;
}

}