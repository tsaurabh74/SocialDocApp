package com.socialdocapp.dao;

import com.socialdocapp.model.State;
import com.socialdocapp.service.GetConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class StateDAO {

    public static ArrayList<State> getStateList(int cid) {
        Connection con = null;
        ArrayList<State> al = new ArrayList<>();
        try {
            con = GetConnection.getConnection();
            String sql = "select * from state where country_id = ?";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, cid);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                int id = rs.getInt("id");
                String name = rs.getString("state_name");

                State s = new State(id, name, cid);
                al.add(s);
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
