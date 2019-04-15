package com.socialdocapp.model;

public class Doctor extends Country{

    private int id;
    private String username;
    private String email;
    private String password;
    private int country_id;
    private int state_id;
    private int city_id;
    private int specialization_id;
    private String gender;
    private String mobile;
    private String experience;
    private String dob;
    private String mci_no;
    private String profile_pic;
    private String verify;
    private String address;

    public Doctor(int id, String username, String email, String password, int country_id, int state_id, int city_id, int specialization_id, String gender, String mobile, String experience, String dob, String mci_no, String profile_pic, String verify, String address) {
        this.id = id;
        this.username = username;
        this.email = email;
        this.password = password;
        this.country_id = country_id;
        this.state_id = state_id;
        this.city_id = city_id;
        this.specialization_id = specialization_id;
        this.gender = gender;
        this.mobile = mobile;
        this.experience = experience;
        this.dob = dob;
        this.mci_no = mci_no;
        this.profile_pic = profile_pic;
        this.verify = verify;
        this.address = address;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public Doctor() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public int getCountry_id() {
        return country_id;
    }

    public void setCountry_id(int country_id) {
        this.country_id = country_id;
    }

    public int getState_id() {
        return state_id;
    }

    public void setState_id(int state_id) {
        this.state_id = state_id;
    }

    public int getCity_id() {
        return city_id;
    }

    public void setCity_id(int city_id) {
        this.city_id = city_id;
    }

    public int getSpecialization_id() {
        return specialization_id;
    }

    public void setSpecialization_id(int specialization_id) {
        this.specialization_id = specialization_id;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getMobile() {
        return mobile;
    }

    public void setMobile(String mobile) {
        this.mobile = mobile;
    }

    public String getExperience() {
        return experience;
    }

    public void setExperience(String experience) {
        this.experience = experience;
    }

    public String getDob() {
        return dob;
    }

    public void setDob(String dob) {
        this.dob = dob;
    }

    public String getMci_no() {
        return mci_no;
    }

    public void setMci_no(String mci_no) {
        this.mci_no = mci_no;
    }

    public String getProfile_pic() {
        return profile_pic;
    }

    public void setProfile_pic(String profile_pic) {
        this.profile_pic = profile_pic;
    }

    public String getVerify() {
        return verify;
    }

    public void setVerify(String verify) {
        this.verify = verify;
    }

}
