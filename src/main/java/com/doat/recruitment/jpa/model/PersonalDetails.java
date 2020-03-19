/*
 * Copyright (c) 2020. All rights reserved to Directorate Of accounts and Treasuries, Guwahati.
 * @Author: Pranjal Das
 */

package com.doat.recruitment.jpa.model;

import javax.persistence.*;


@Entity
@Table(name = "personaldetails")
public class PersonalDetails {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "personal_details_id")
    private int personal_details_id;
    private String reg_id;

    private String fname;

    private String mname;

    private String lname;

    private String mother;

    private String father;

    private String gender;

    private String category;

    private String religion;

    private String disability_status;

    private String nationality;

    private String marital_status;

    private String prc_status;

    private String currently_working_status;


    public PersonalDetails(int personal_details_id, String reg_id, String fname, String mname, String lname, String mother, String father, String gender, String category, String religion, String disability_status, String nationality, String marital_status, String prc_status, String currently_working_status) {
        super();
        this.personal_details_id = personal_details_id;
        this.reg_id = reg_id;
        this.fname = fname;
        this.mname = mname;
        this.lname = lname;
        this.mother = mother;
        this.father = father;
        this.gender = gender;
        this.category = category;
        this.religion = religion;
        this.disability_status = disability_status;
        this.nationality = nationality;
        this.marital_status = marital_status;
        this.prc_status = prc_status;
        this.currently_working_status = currently_working_status;
    }

    public PersonalDetails() {
    }

    public int getPersonal_details_id() {
        return personal_details_id;
    }

    public void setPersonal_details_id(int personal_details_id) {
        this.personal_details_id = personal_details_id;
    }

    public String getReg_id() {
        return reg_id;
    }

    public void setReg_id(String reg_id) {
        this.reg_id = reg_id;
    }

    public String getFname() {
        return fname;
    }

    public void setFname(String fname) {
        this.fname = fname;
    }

    public String getMname() {
        return mname;
    }

    public void setMname(String mname) {
        this.mname = mname;
    }

    public String getLname() {
        return lname;
    }

    public void setLname(String lname) {
        this.lname = lname;
    }

    public String getMother() {
        return mother;
    }

    public void setMother(String mother) {
        this.mother = mother;
    }

    public String getFather() {
        return father;
    }

    public void setFather(String father) {
        this.father = father;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public String getReligion() {
        return religion;
    }

    public void setReligion(String religion) {
        this.religion = religion;
    }

    public String getDisability_status() {
        return disability_status;
    }

    public void setDisability_status(String disability_status) {
        this.disability_status = disability_status;
    }

    public String getNationality() {
        return nationality;
    }

    public void setNationality(String nationality) {
        this.nationality = nationality;
    }

    public String getMarital_status() {
        return marital_status;
    }

    public void setMarital_status(String marital_status) {
        this.marital_status = marital_status;
    }

    public String getPrc_status() {
        return prc_status;
    }

    public void setPrc_status(String prc_status) {
        this.prc_status = prc_status;
    }

    public String getCurrently_working_status() {
        return currently_working_status;
    }

    public void setCurrently_working_status(String currently_working_status) {
        this.currently_working_status = currently_working_status;
    }

    @Override
    public String toString() {
        return "Personaldetails{" +
                "personal_details_id=" + personal_details_id +
                ", reg_id='" + reg_id + '\'' +
                ", fname='" + fname + '\'' +
                ", mname='" + mname + '\'' +
                ", lname='" + lname + '\'' +
                ", mother='" + mother + '\'' +
                ", father='" + father + '\'' +
                ", gender='" + gender + '\'' +
                ", category='" + category + '\'' +
                ", religion='" + religion + '\'' +
                ", disability_status='" + disability_status + '\'' +
                ", nationality='" + nationality + '\'' +
                ", marital_status='" + marital_status + '\'' +
                ", prc_status='" + prc_status + '\'' +
                ", currently_working_status='" + currently_working_status + '\'' +
                '}';
    }
}
