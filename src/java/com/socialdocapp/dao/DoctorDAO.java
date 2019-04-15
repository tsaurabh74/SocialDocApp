 package com.socialdocapp.dao;

import com.socialdocapp.model.City;
import com.socialdocapp.model.Doctor;
import com.socialdocapp.service.GetConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.http.HttpSession;

public class DoctorDAO {

    public static boolean changeProfilePic(Doctor doctor, HttpSession session) {
        boolean status = false;
        Connection con = null;
        try {
            con = GetConnection.getConnection();
            String sql = "update doctor set profile_pic = ? where id  =?";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, doctor.getProfile_pic());
            ps.setInt(2, Integer.parseInt(session.getAttribute("id").toString()));
            if (ps.executeUpdate() != 0) {
                status = true;
                session.setAttribute("profile", doctor.getProfile_pic());
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
        return status;
    }

    public static boolean aunthenticateDoctor(Doctor doctor, HttpSession session) {
        Connection con = null;
        boolean status = false;
        try {
            con = GetConnection.getConnection();
            String sql = "select * from doctor where email = ? and password = ?";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, doctor.getEmail());
            ps.setString(2, doctor.getPassword());
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                status = true;
                session.setAttribute("id", rs.getInt(1));
                session.setAttribute("username", rs.getString(2));
                session.setAttribute("email", rs.getString(3));
                session.setAttribute("dob", rs.getString(11));
                session.setAttribute("gender", rs.getString(8));
                session.setAttribute("profile", rs.getString("profile_pic"));
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
        return status;

    }

    public static boolean saveDoctor(Doctor doctor) {
        boolean status = false;
        Connection con = null;
        try {
            con = GetConnection.getConnection();
            String sql = "insert into doctor(username,email,password,city_id,state_id,country_id,specialization_id,gender,mobile,experience,dob,mci_no,address) values(?,?,?,?,?,?,?,?,?,?,?,?,?)";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, doctor.getUsername());
            ps.setString(2, doctor.getEmail());
            ps.setString(3, doctor.getPassword());
            ps.setInt(4, doctor.getCity_id());
            ps.setInt(5, doctor.getState_id());
            ps.setInt(6, doctor.getCountry_id());
            ps.setInt(7, doctor.getSpecialization_id());
            ps.setString(8, doctor.getGender());
            ps.setString(9, doctor.getMobile());
            ps.setString(10, doctor.getExperience());
            ps.setString(11, doctor.getDob());
            ps.setString(12, doctor.getMci_no());
            ps.setString(13, doctor.getAddress());
            if (ps.executeUpdate() != 0) {
                status = true;
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
        return status;
    }
    public static City getAllInfo(int id){
        Connection con=null;
        con=GetConnection.getConnection();
        City c=new City();
        String sql=" select doctor.username,doctor.email,doctor.gender,doctor.mobile,doctor.address,country.country_name,state.state_name,city.city_name from doctor inner join country on doctor.country_id=country_id inner join state on doctor.state_id=state.id inner join city on doctor.city_id=city.id where doctor.id=?;";
        try {
            PreparedStatement ps=con.prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs=ps.executeQuery();
            if(rs.next()){
                
                c.setUsername(rs.getString("username"));
                c.setAddress(rs.getString("address"));
                c.setCityName(rs.getString("city_name"));
                c.setEmail(rs.getString("email"));
                c.setGender(rs.getString("gender"));
                c.setMobile(rs.getString("mobile"));
                c.setStateName(rs.getString("state_name"));
                c.setCountry(rs.getString("country_name"));
            }
            
        } catch (SQLException ex) {
            Logger.getLogger(DoctorDAO.class.getName()).log(Level.SEVERE, null, ex);
        }finally{
            try {
                con.close();
            } catch (SQLException ex) {
                Logger.getLogger(DoctorDAO.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return c;
    }
    public static boolean changePassword(String oldPass,String newPass,int id){
        Connection con=null;
        con=GetConnection.getConnection();
        boolean b=false;
        try {
            PreparedStatement ps=con.prepareStatement("update doctor set password=? where password=? and id=?");
            ps.setString(1, newPass);
            ps.setString(2, oldPass);
            ps.setInt(3, id);
            int i=ps.executeUpdate();
            if(i>0){
                b=true;
            }
        } catch (SQLException ex) {
            Logger.getLogger(DoctorDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return b;
    }
    public static boolean checkEmail(String email){
        Connection con=null;
        con=GetConnection.getConnection();
        boolean b=false;
        try {
            PreparedStatement ps=con.prepareStatement("select username from doctor where email=?");
            ps.setString(1, email);
            ResultSet rs=ps.executeQuery();
            if(rs.next()){
                b=true;
            }
        } catch (SQLException ex) {
            Logger.getLogger(DoctorDAO.class.getName()).log(Level.SEVERE, null, ex);
        }finally{
            try {
                con.close();
            } catch (SQLException ex) {
                Logger.getLogger(DoctorDAO.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return b;
    }
    public static boolean forgetPassword(String email,String pass){
        Connection con;
        con=GetConnection.getConnection();
        boolean b=false;
        try {
            PreparedStatement ps=con.prepareStatement("update doctor set password=? where email=?");
            ps.setString(1, pass);
            ps.setString(2, email);
            int i=ps.executeUpdate();
            if(i>0){
                b=true;
            }
        } catch (SQLException ex) {
            Logger.getLogger(DoctorDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return b;
        
}
}