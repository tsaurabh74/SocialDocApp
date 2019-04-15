/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.socialdocapp.dao;

import com.socialdocapp.model.Post;
import com.socialdocapp.service.GetConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author HP
 */
public class PostDao {

    public static boolean savePost(Post post) {
        boolean status = false;
        Connection con = null;
        con = GetConnection.getConnection();
        try {
            PreparedStatement ps = con.prepareStatement("insert into post (doctor_id,post_image,post_text,post_date,post_type) values(?,?,?,?,?)");
            ps.setInt(1, post.getDoctorId());
            ps.setString(2, post.getPostImage());
            ps.setString(3, post.getPostText());
            ps.setString(4, post.getPostDate());
            ps.setString(5, post.getPostType());
            int i = ps.executeUpdate();
            if (i > 0) {
                status = true;
            }
        } catch (SQLException ex) {
            Logger.getLogger(Post.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            try {
                con.close();
            } catch (SQLException ex) {
                Logger.getLogger(PostDao.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return true;

    }

    public static ArrayList<Post> getPost() {
        Connection con = null;
        con = GetConnection.getConnection();
        ArrayList<Post> al = new ArrayList<>();
        try {
            PreparedStatement ps = con.prepareStatement("select post.id,post.post_image,post.post_text,post.post_date,post.post_type,doctor.username,doctor.profile_pic,doctor.id from post inner join doctor on post.doctor_id = doctor.id order by post_date desc");
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Post p = new Post();
                p.setId(rs.getInt(1));
                p.setPostImage(rs.getString("post_image"));
                p.setPostDate(rs.getString("post_date"));
                p.setPostText(rs.getString("post_text"));
                p.setPostType(rs.getString("post_type"));
                p.setUsername(rs.getString("username"));
                p.setProfile(rs.getString("profile_pic"));
                al.add(p);
            }
        } catch (SQLException ex) {
            Logger.getLogger(PostDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return al;

    }
    public static ArrayList<Post> getAllImages(int id){
        Connection con=null;
        con=GetConnection.getConnection();
        ArrayList<Post> ar=new ArrayList<>();
        //Post p=new Post();
        try {
            PreparedStatement ps=con.prepareStatement("select post_image from post where doctor_id=?");
            ps.setInt(1, id);
            ResultSet rs=ps.executeQuery();
            while(rs.next()){
                Post p=new Post();
                p.setPostImage(rs.getString("post_image"));
                ar.add(p);
            }
        } catch (SQLException ex) {
            Logger.getLogger(PostDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return ar;
    }
}
