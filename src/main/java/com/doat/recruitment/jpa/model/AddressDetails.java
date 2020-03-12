package com.doat.recruitment.jpa.model;

public class AddressDetails {
    //Attributes
    private String permanent_address;
    private String current_address;
    private int zipcode;
    private String district;
    private String state;
    private String country;
    //Constructor


    public AddressDetails(String permanent_address, String current_address, int zipcode, String district, String state, String country) {
        this.permanent_address = permanent_address;
        this.current_address = current_address;
        this.zipcode = zipcode;
        this.district = district;
        this.state = state;
        this.country = country;
    }
    //Access Modifiers

    public String getPermanent_address() {
        return permanent_address;
    }

    public void setPermanent_address(String permanent_address) {
        this.permanent_address = permanent_address;
    }

    public String getCurrent_address() {
        return current_address;
    }

    public void setCurrent_address(String current_address) {
        this.current_address = current_address;
    }

    public int getZipcode() {
        return zipcode;
    }

    public void setZipcode(int zipcode) {
        this.zipcode = zipcode;
    }

    public String getDistrict() {
        return district;
    }

    public void setDistrict(String district) {
        this.district = district;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }
    //toString Override

    @Override
    public String toString() {
        return "Address{" +
                "permanent_address='" + permanent_address + '\'' +
                ", current_address='" + current_address + '\'' +
                ", zipcode=" + zipcode +
                ", district='" + district + '\'' +
                ", state='" + state + '\'' +
                ", country='" + country + '\'' +
                '}';
    }
}
