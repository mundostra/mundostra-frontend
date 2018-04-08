package com.aws.codestar.projecttemplates.logic;

import com.aws.codestar.projecttemplates.database.Driver;

import java.sql.*;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Map;
import java.util.UUID;

public class Questionnaire {
    private Connection db_connection = null;
    private Statement stmt = null;
    private ResultSet rs = null;
    private CallableStatement statement = null;


    public Questionnaire(){
        Driver db_instance = Driver.getDBInstance();
        db_connection = db_instance.getDBConnection();
        try {
            stmt = db_connection.createStatement();
        } catch(Exception e){

        }
    }

    public String saveQuestionnaire(Map<String,String> questionnaire, String[] age_groups, String[] stay_preferences){

        try {
            DateFormat dateFormat = new SimpleDateFormat("MM/dd/yyyy");
            Date start_date = new java.sql.Date(dateFormat.parse(questionnaire.get("start_date")).getTime());
            Date end_date = new java.sql.Date(dateFormat.parse(questionnaire.get("end_date")).getTime());
            statement = db_connection.prepareCall("{call `mundostra_db`.`save_questionnaire` (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)}");
            statement.setString("email",questionnaire.get("email"));
            statement.setString("origin_city",questionnaire.get("origin_city"));
            statement.setString("destination_cities",questionnaire.get("destination_cities"));
            statement.setDate("start_date", start_date);
            statement.setDate("end_date",end_date);
            statement.setInt("number_of_travelers",Integer.parseInt(questionnaire.get("number_of_travelers")));
            statement.setInt("rental_car",Integer.parseInt(questionnaire.get("rental_car")));
            statement.setString("stay_preference",converter(stay_preferences));
            statement.setString("tour_preference",questionnaire.get("tour_preference"));
            statement.setString("age_group",converter(age_groups));
            statement.setString("notes",questionnaire.get("notes"));
            statement.execute();
            statement.close();
            return "success";
        } catch(Exception e) {
            return e.toString();
        }

    }

    public String addTripQuestionnaire(Map<String, String> questionnaire, String[] age_groups, String[] stay_preferences){
        try {
            UserSignup userSignup = new UserSignup();
            boolean doesUserEmailExists = userSignup.userEmailExists(questionnaire.get("email"));
            String user_contacts_id = UUID.randomUUID().toString();
            if(doesUserEmailExists) {
                user_contacts_id = userSignup.getUserContactsID(questionnaire.get("email"));
            } else {
                userSignup.addUserContact(questionnaire,user_contacts_id);
            }
            UUID trip_id = UUID.randomUUID();
            statement = db_connection.prepareCall("{call `mundostra_db`.`add_trip_questionnaire` (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)}");
            statement.setString("trip_questionnaire_id", trip_id.toString());
            statement.setString("origin_city",questionnaire.get("origin_city"));
            statement.setString("destination_cities",questionnaire.get("destination_cities"));
            statement.setDate("start_date", convertStringToDate(questionnaire.get("start_date")));
            statement.setDate("end_date",convertStringToDate(questionnaire.get("end_date")));
            statement.setInt("number_of_travelers",Integer.parseInt(questionnaire.get("number_of_travelers")));
            statement.setInt("rental_car",Integer.parseInt(questionnaire.get("rental_car")));
            statement.setString("stay_preference",converter(stay_preferences));
            statement.setString("tour_preference",questionnaire.get("tour_preference"));
            statement.setString("age_group",converter(age_groups));
            statement.setString("notes",questionnaire.get("notes"));
            statement.setString("user_contacts_id", user_contacts_id);
            statement.execute();
            return "success";
        } catch(Exception e){
            return e.toString();
        }
    }

    public String converter(String[] data){
        if(data.length<=0)
            return "";
        StringBuilder sb = new StringBuilder();
        for (String d : data) {
            sb.append(d).append(",");
        }
        sb.deleteCharAt(sb.length() - 1);
        return sb.toString();
    }

    public Date convertStringToDate(String date){
        try {
            DateFormat dateFormat = new SimpleDateFormat("MM/dd/yyyy");
            return new java.sql.Date(dateFormat.parse(date).getTime());
        } catch (Exception e) {
            return null;
        }
    }
}
