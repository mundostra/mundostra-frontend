package com.aws.codestar.projecttemplates.logic;

import com.aws.codestar.projecttemplates.database.Driver;

import java.sql.*;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
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
            if(userEmailExists(signupData.get("email")))
                return "fail";

            statement = db_connection.prepareCall("{call `mundostra_db`.`save_user` (?, ?, ?, ?, ?)}");
            statement.setString("first_name",signupData.get("first_name"));
            statement.setString("last_name",signupData.get("last_name"));
            statement.setString("email",signupData.get("email"));
            statement.setString("password", signupData.get("password"));
            statement.setString("phone", signupData.get("phone"));
            statement.execute();
            statement.close();
            return "success";
        } catch(Exception e) {
            return e.toString();
        }
    }

    public String signInUser(Map<String,String> signinData){
        try {
            if(!userEmailExists(signinData.get("email")))
                return "fail";

            statement = db_connection.prepareCall("{call `mundostra_db`.`signIn_User` (?, ?, ?)}");
            statement.setString("email",signinData.get("email"));
            statement.setString("user_password", signinData.get("password"));
            statement.registerOutParameter("isSignInSuccess", java.sql.Types.INTEGER);
            statement.execute();
            int signInSuccessful = statement.getInt("isSignInSuccess");
            statement.close();

            if(signInSuccessful==1)
                return "success";
            return "matchfail";
        } catch(Exception e) {
            return e.toString();
        }
    }

    public boolean userEmailExists(String email) {
        try {
            statement = db_connection.prepareCall("{call `mundostra_db`.`check_user_email` (?, ?)}");
            statement.setString("email",email);
            statement.registerOutParameter("emailExists", java.sql.Types.INTEGER);
            statement.execute();
            int emailExists = statement.getInt("emailExists");
            statement.close();
            if(emailExists==1)
                return true;
            return false;
        } catch(Exception e) {
            return false;
        }
    }

    public String addUserContact(Map<String,String> userContactData, String user_contact_id) {
        try {
            statement = db_connection.prepareCall("{call `mundostra_db`.`add_user_contacts` (?, ?, ?, ?)}");
            statement.setString("email", userContactData.get("email"));
            statement.setString("name", userContactData.get("name"));
            statement.setString("phone", userContactData.get("phone"));
            statement.setString("user_contacts_id", user_contact_id);
            statement.execute();
            statement.close();
            return "success";
        } catch (Exception e){
            return e.toString();
        }
    }

    public String getUserContactsID(String email) {
        try {
            statement = db_connection.prepareCall("{call `mundostra_db`.`get_user_contacts_id` (?, ?)}");
            statement.setString("email", email);
            statement.registerOutParameter("contacts_id", Types.VARCHAR);
            statement.execute();
            String userContactsID = statement.getString("contacts_id");
            statement.close();
           return userContactsID;
        } catch (Exception e) {
            return null;
        }
    }
}
