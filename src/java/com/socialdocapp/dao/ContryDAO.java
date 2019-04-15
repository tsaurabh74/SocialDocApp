package com.socialdocapp.dao;

import com.socialdocapp.model.Country;
import com.socialdocapp.service.GetConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class ContryDAO {

    public static ArrayList<Country> getCountryList() {
        Connection con = null;
        ArrayList<Country> al = new ArrayList<>();
        try {
            con = GetConnection.getConnection();
            String sql = "select * from country";
            PreparedStatement ps = con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                int id = rs.getInt("id");
                String country = rs.getString("country_name");

                Country c = new Country(id, country);
                al.add(c);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                con.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return al;
    }
}
