package com.doat.recruitment.jpa.model;

import javax.persistence.*;
import javax.validation.constraints.NotBlank;
@Entity
public class Personaldetails {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "personal_details_id")
    private int personal_details_id;
    @NotBlank
    private String name;
    @NotBlank
    private String mother;
    @NotBlank
    private String father;
    @NotBlank
    private String category;
    @NotBlank
    private String religion;
    @NotBlank
    private String disability_status;
    @NotBlank
    private String nationality;
    @NotBlank
    private String prc_status;
    @NotBlank
    private String ex_serviceman_status;

    public Personaldetails() {
    }

    public Personaldetails(@NotBlank String name, @NotBlank String mother, @NotBlank String father, @NotBlank String category, @NotBlank String religion, @NotBlank String disability_status, @NotBlank String nationality, @NotBlank String prc_status, @NotBlank String ex_serviceman_status) {
        super();
        this.name = name;
        this.mother = mother;
        this.father = father;
        this.category = category;
        this.religion = religion;
        this.disability_status = disability_status;
        this.nationality = nationality;
        this.prc_status = prc_status;
        this.ex_serviceman_status = ex_serviceman_status;
    }

    public int getPersonal_details_id() {
        return personal_details_id;
    }

    public void setPersonal_details_id(int personal_details_id) {
        this.personal_details_id = personal_details_id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
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

    public String getPrc_status() {
        return prc_status;
    }

    public void setPrc_status(String prc_status) {
        this.prc_status = prc_status;
    }

    public String getEx_serviceman_status() {
        return ex_serviceman_status;
    }

    public void setEx_serviceman_status(String ex_serviceman_status) {
        this.ex_serviceman_status = ex_serviceman_status;
    }

    @Override
    public String toString() {
        return "Personaldetails{" +
                "personal_details_id=" + personal_details_id +
                ", name='" + name + '\'' +
                ", mother='" + mother + '\'' +
                ", father='" + father + '\'' +
                ", category='" + category + '\'' +
                ", religion='" + religion + '\'' +
                ", disability_status='" + disability_status + '\'' +
                ", nationality='" + nationality + '\'' +
                ", prc_status='" + prc_status + '\'' +
                ", ex_serviceman_status='" + ex_serviceman_status + '\'' +
                '}';
    }
}
