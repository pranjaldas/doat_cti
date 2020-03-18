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
    private String permanent_district;
    private String permanent_state;

    private String current_address;
    private int current_zipcode;
    private String current_district;
    private String current_state;

    //Constructor

    public AddressDetails() {
    }

    public AddressDetails(int address_id, int reg_id, String permanent_address, int permanent_zipcode, String permanent_district, String permanent_state, String current_address, int current_zipcode, String current_district, String current_state) {
        this.address_id = address_id;
        this.reg_id = reg_id;
        this.permanent_address = permanent_address;
        this.permanent_zipcode = permanent_zipcode;
        this.permanent_district = permanent_district;
        this.permanent_state = permanent_state;
        this.current_address = current_address;
        this.current_zipcode = current_zipcode;
        this.current_district = current_district;
        this.current_state = current_state;
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

    public String getPermanent_district() {
        return permanent_district;
    }

    public void setPermanent_district(String permanent_district) {
        this.permanent_district = permanent_district;
    }

    public String getPermanent_state() {
        return permanent_state;
    }

    public void setPermanent_state(String permanent_state) {
        this.permanent_state = permanent_state;
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

    public String getCurrent_district() {
        return current_district;
    }

    public void setCurrent_district(String current_district) {
        this.current_district = current_district;
    }

    public String getCurrent_state() {
        return current_state;
    }

    public void setCurrent_state(String current_state) {
        this.current_state = current_state;
    }

    @Override
    public String toString() {
        return "AddressDetails{" +
                "address_id=" + address_id +
                ", reg_id=" + reg_id +
                ", permanent_address='" + permanent_address + '\'' +
                ", permanent_zipcode=" + permanent_zipcode +
                ", permanent_district='" + permanent_district + '\'' +
                ", permanent_state='" + permanent_state + '\'' +
                ", current_address='" + current_address + '\'' +
                ", current_zipcode=" + current_zipcode +
                ", current_district='" + current_district + '\'' +
                ", current_state='" + current_state + '\'' +
                '}';
    }
}
