/*
 * Copyright (c) 2020. All rights reserved to Directorate Of accounts and Treasuries, Guwahati.
 * @Author: Pranjal Das
 */

package com.doat.recruitment.jpa.model;

import javax.persistence.*;

@Entity
@Table(name = "address_details")
public class AddressDetails {
    //Attributes
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int address_id;
    private int reg_id;
    private String permanent_address;
    private int permanent_zipcode;
    private String current_address;
    private int current_zipcode;

    private String district;
    private String state;
    private String country;
    //Constructor

    public AddressDetails() {
    }

    public AddressDetails(int address_id, int reg_id, String permanent_address, String current_address, int permanent_zipcode, int current_zipcode, String district, String state, String country) {
        this.address_id = address_id;
        this.reg_id = reg_id;
        this.permanent_address = permanent_address;
        this.current_address = current_address;
        this.permanent_zipcode = permanent_zipcode;
        this.current_zipcode = current_zipcode;
        this.district = district;
        this.state = state;
        this.country = country;
    }
    //Access Modifiers


    public int getAddress_id() {
        return address_id;
    }

    public void setAddress_id(int address_id) {
        this.address_id = address_id;
    }

    public int getReg_id() {
        return reg_id;
    }

    public void setReg_id(int reg_id) {
        this.reg_id = reg_id;
    }

    public String getPermanent_address() {
        return permanent_address;
    }

    public void setPermanent_address(String permanent_address) {
        this.permanent_address = permanent_address;
    }

    public int getPermanent_zipcode() {
        return permanent_zipcode;
    }

    public void setPermanent_zipcode(int permanent_zipcode) {
        this.permanent_zipcode = permanent_zipcode;
    }

    public String getCurrent_address() {
        return current_address;
    }

    public void setCurrent_address(String current_address) {
        this.current_address = current_address;
    }

    public int getCurrent_zipcode() {
        return current_zipcode;
    }

    public void setCurrent_zipcode(int current_zipcode) {
        this.current_zipcode = current_zipcode;
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

    @Override
    public String toString() {
        return "AddressDetails{" +
                "address_id=" + address_id +
                ", reg_id=" + reg_id +
                ", permanent_address='" + permanent_address + '\'' +
                ", permanent_zipcode=" + permanent_zipcode +
                ", current_address='" + current_address + '\'' +
                ", current_zipcode=" + current_zipcode +
                ", district='" + district + '\'' +
                ", state='" + state + '\'' +
                ", country='" + country + '\'' +
                '}';
    }
}
