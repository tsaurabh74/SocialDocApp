package com.socialdocapp.model;

public class Specialization {

    private int id;
    private String speciality;

    public Specialization(int id, String speciality) {
        this.id = id;
        this.speciality = speciality;
    }

    public Specialization() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getSpeciality() {
        return speciality;
    }

    public void setSpeciality(String speciality) {
        this.speciality = speciality;
    }

}
