package com.socialdocapp.service;

import java.sql.Connection;
import java.sql.DriverManager;

public class GetConnection {

    public static Connection con = null;

    public static Connection getConnection() {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/talkdoc1", "root", "root");
        } catch (Exception e) {
            e.printStackTrace();
        }
        return con;
    }

}
