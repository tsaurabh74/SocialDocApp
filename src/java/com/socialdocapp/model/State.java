package com.socialdocapp.model;

public class State extends Doctor{

    private int id;
    private String stateName;
    private int countryId;

    public State(int id, String stateName, int countryId) {
        this.id = id;
        this.stateName = stateName;
        this.countryId = countryId;
    }

    public State() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getStateName() {
        return stateName;
    }

    public void setStateName(String stateName) {
        this.stateName = stateName;
    }

    public int getCountryId() {
        return countryId;
    }

    public void setCountryId(int countryId) {
        this.countryId = countryId;
    }

}
