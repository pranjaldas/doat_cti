package com.doat.recruitment.jpa.model;

import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.*;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Null;
import javax.xml.crypto.Data;
import java.util.Date;

@Entity
@Table(name = "registration_details")
public class Registration {
    //Attributes
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    private String job_title;

    private String fname;
    private  String mname;

    private String lname;

    @DateTimeFormat(pattern = "yyyy-mm-dd")
    private Date date_of_birth;

    private String phone;

    private String email;

    private String password;
    //Constructor

    public Registration() {
    }

    public Registration(String tob_title,String fname,String mname, String lname, Date date_of_birth, String phone, String email, String password) {
        super();
        this.job_title=job_title;
        this.fname = fname;
        this.mname=mname;
        this.lname=lname;
        this.date_of_birth = date_of_birth;
        this.phone = phone;
        this.email = email;
        this.password = password;
    }

    public String getJob_title() {
        return job_title;
    }

    public void setJob_title(String job_title) {
        this.job_title = job_title;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
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

    public Date getDate_of_birth() {
        return date_of_birth;
    }

    public void setDate_of_birth(Date date_of_birth) {
        this.date_of_birth = date_of_birth;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
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

    @Override
    public String toString() {
        return "Registration{" +
                "id=" + id +
                ", job_title='" + job_title + '\'' +
                ", fname='" + fname + '\'' +
                ", mname='" + mname + '\'' +
                ", lname='" + lname + '\'' +
                ", date_of_birth=" + date_of_birth +
                ", phone='" + phone + '\'' +
                ", email='" + email + '\'' +
                ", password='" + password + '\'' +
                '}';
    }
}
