package com.socialdocapp.dao;

import com.socialdocapp.model.Specialization;
import com.socialdocapp.service.GetConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class SpecializationDAO {

    public static ArrayList<Specialization> getSpecialityList() {
        Connection con = null;
        ArrayList<Specialization> al = new ArrayList<>();
        try {
            con = GetConnection.getConnection();
            String sql = "select * from specialization";
            PreparedStatement ps = con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                int id = rs.getInt("id");
                String speciality = rs.getString("speciality");

                Specialization specialization = new Specialization(id, speciality);
                al.add(specialization);
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
