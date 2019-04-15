package com.socialdocapp.dao;

import com.socialdocapp.model.LikePost;
import com.socialdocapp.service.GetConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class LikePostDAO {

    public static ArrayList<LikePost> totalLike(int postId) {
        ArrayList<LikePost> al = new ArrayList<>();

        Connection con = null;
        try {
            String sql = "select doctor.id,doctor.username from doctor inner join like_post on like_post.doctor_id = doctor.id where post_id = ?";
            con = GetConnection.getConnection();
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, postId);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                LikePost lp = new LikePost();
                lp.setDoctorId(rs.getInt(1));
                lp.setUsername(rs.getString(2));
                al.add(lp);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return al;
    }
}
