package com.aws.codestar.projecttemplates.logic;

import com.aws.codestar.projecttemplates.database.Driver;
import com.sun.deploy.net.HttpResponse;

import javax.xml.ws.Response;
import javax.xml.ws.http.HTTPException;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Map;

public class UserSignup {

    private Connection db_connection = null;
    private Statement stmt = null;
    private ResultSet rs = null;
    private CallableStatement statement = null;

    public UserSignup(){
        Driver db_instance = Driver.getDBInstance();
        db_connection = db_instance.getDBConnection();
        try {
            stmt = db_connection.createStatement();
        } catch(Exception e){

        }
    }

    public String getUsers(){
        try {
            rs = stmt.executeQuery("SELECT foo FROM user");
            return "success";
        } catch(Exception e) {
            return "fail";
        }

    }

    public String saveUser(Map<String,String> signupData){
        try {
            statement = db_connection.prepareCall("{call `mundostra_db`.`save_user` (?, ?, ?)}");
            statement.setString("first_name",signupData.get("first_name"));
            statement.setString("last_name",signupData.get("last_name"));
            statement.setString("email",signupData.get("email"));
            statement.execute();
            statement.close();
            return "success";
        } catch(Exception e) {
            return e.toString();
        }

    }
}
