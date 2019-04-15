package com.socialdocapp.dao;

import com.socialdocapp.model.City;
import com.socialdocapp.service.GetConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class CityDAO {

    public static ArrayList<City> getCityList(int sid) {
        Connection con = null;
        ArrayList<City> al = new ArrayList<>();
        try {
            con = GetConnection.getConnection();
            String sql = "select * from city where state_id = ?";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, sid);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                int id = rs.getInt("id");
                String cityName = rs.getString("city_name");
                City c = new City(id, cityName, sid);
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
