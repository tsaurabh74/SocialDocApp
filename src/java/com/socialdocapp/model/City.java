package com.socialdocapp.model;

public class City extends State{

    private int id;
    private String cityName;
    private int stateId;

    public City(int id, String cityName, int stateId) {
        this.id = id;
        this.cityName = cityName;
        this.stateId = stateId;
    }

    public City() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getCityName() {
        return cityName;
    }

    public void setCityName(String cityName) {
        this.cityName = cityName;
    }

    public int getStateId() {
        return stateId;
    }

    public void setStateId(int stateId) {
        this.stateId = stateId;
    }

}
