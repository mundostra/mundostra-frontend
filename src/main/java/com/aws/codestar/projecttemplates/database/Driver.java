package com.aws.codestar.projecttemplates.database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Driver {

    private static Driver db_instance = null;
    private static Connection db_connection = null;

    private Driver(){
        try {
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            db_connection = DriverManager.getConnection("jdbc:mysql://mysql-east-instance1.cw2ykg5yonpj.us-east-2.rds.amazonaws.com:3306?" +
            "user=itsupport&password=Chutzpah-89");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static Driver getDBInstance(){
        if(db_instance==null){
            db_instance = new Driver();
        }
        return db_instance;
    }

    public Connection getDBConnection(){
        return db_connection;
    }

}
