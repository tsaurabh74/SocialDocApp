package com.socialdocapp.dao;

import com.socialdocapp.model.LikePost;
import com.socialdocapp.service.GetConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

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
     public static boolean saveLike(int postId,int doctorId){
        boolean status=false;
        Connection con;
        con=GetConnection.getConnection();
        try {
            PreparedStatement ps=con.prepareStatement("insert into like_post(post_id,doctor_id) values (?,?)");
             ps.setInt(1, postId);
             ps.setInt(2, doctorId);
             int i=ps.executeUpdate();
             if(i>0){
                 status=true;
             }
        } catch (SQLException ex) {
            Logger.getLogger(LikePostDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return status;
       
    }
}
