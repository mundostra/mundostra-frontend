package com.aws.codestar.projecttemplates.logic;

import com.aws.codestar.projecttemplates.database.Driver;

import java.sql.*;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Map;

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
            DateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy");
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
            return "fail";
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
}
