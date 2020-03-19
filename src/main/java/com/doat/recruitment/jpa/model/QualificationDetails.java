/*
 * Copyright (c) 2020. All rights reserved to Directorate Of accounts and Treasuries, Guwahati.
 * @Author: Pranjal Das
 */

package com.doat.recruitment.jpa.model;

import javax.persistence.*;

@Entity
@Table(name = "qualification_details")
public class QualificationDetails {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int qualification_id;
    private String reg_id;
    private String hslc_year;
    private String hslc_subjects;
    private String hslc_board;
    private String hslc_percentage;

    private String hs_year;
    private String hs_stream;
    private String hs_board;
    private String hs_percentage;

    private String dig_year;
    private String dig_clg_uni;
    private String dig_specification;
    private String dig_percentage;

    private String diploma_status;

    public QualificationDetails(int qualification_id, String reg_id, String hslc_year, String hslc_subjects, String hslc_board, String hslc_percentage, String hs_year, String hs_stream, String hs_board, String hs_percentage, String dig_year, String dig_clg_uni, String dig_specification, String dig_percentage, String diploma_status) {
        this.qualification_id = qualification_id;
        this.reg_id = reg_id;
        this.hslc_year = hslc_year;
        this.hslc_subjects = hslc_subjects;
        this.hslc_board = hslc_board;
        this.hslc_percentage = hslc_percentage;
        this.hs_year = hs_year;
        this.hs_stream = hs_stream;
        this.hs_board = hs_board;
        this.hs_percentage = hs_percentage;
        this.dig_year = dig_year;
        this.dig_clg_uni = dig_clg_uni;
        this.dig_specification = dig_specification;
        this.dig_percentage = dig_percentage;
        this.diploma_status = diploma_status;
    }

    public QualificationDetails() {

    }

    public int getQualification_id() {
        return qualification_id;
    }

    public void setQualification_id(int qualification_id) {
        this.qualification_id = qualification_id;
    }

    public String getReg_id() {
        return reg_id;
    }

    public void setReg_id(String reg_id) {
        this.reg_id = reg_id;
    }

    public String getHslc_year() {
        return hslc_year;
    }

    public void setHslc_year(String hslc_year) {
        this.hslc_year = hslc_year;
    }

    public String getHslc_subjects() {
        return hslc_subjects;
    }

    public void setHslc_subjects(String hslc_subjects) {
        this.hslc_subjects = hslc_subjects;
    }

    public String getHslc_board() {
        return hslc_board;
    }

    public void setHslc_board(String hslc_board) {
        this.hslc_board = hslc_board;
    }

    public String getHslc_percentage() {
        return hslc_percentage;
    }

    public void setHslc_percentage(String hslc_percentage) {
        this.hslc_percentage = hslc_percentage;
    }

    public String getHs_year() {
        return hs_year;
    }

    public void setHs_year(String hs_year) {
        this.hs_year = hs_year;
    }

    public String getHs_stream() {
        return hs_stream;
    }

    public void setHs_stream(String hs_stream) {
        this.hs_stream = hs_stream;
    }

    public String getHs_board() {
        return hs_board;
    }

    public void setHs_board(String hs_board) {
        this.hs_board = hs_board;
    }

    public String getHs_percentage() {
        return hs_percentage;
    }

    public void setHs_percentage(String hs_percentage) {
        this.hs_percentage = hs_percentage;
    }

    public String getDig_year() {
        return dig_year;
    }

    public void setDig_year(String dig_year) {
        this.dig_year = dig_year;
    }

    public String getDig_clg_uni() {
        return dig_clg_uni;
    }

    public void setDig_clg_uni(String dig_clg_uni) {
        this.dig_clg_uni = dig_clg_uni;
    }

    public String getDig_specification() {
        return dig_specification;
    }

    public void setDig_specification(String dig_specification) {
        this.dig_specification = dig_specification;
    }

    public String getDig_percentage() {
        return dig_percentage;
    }

    public void setDig_percentage(String dig_percentage) {
        this.dig_percentage = dig_percentage;
    }

    public String isDiploma_status() {
        return diploma_status;
    }

    public String getDiploma_status() {
        return diploma_status;
    }

    public void setDiploma_status(String diploma_status) {
        this.diploma_status = diploma_status;
    }

    @Override
    public String toString() {
        return "QualificationDetails{" +
                "qualification_id=" + qualification_id +
                ", reg_id='" + reg_id + '\'' +
                ", hslc_year='" + hslc_year + '\'' +
                ", hslc_subjects='" + hslc_subjects + '\'' +
                ", hslc_board='" + hslc_board + '\'' +
                ", hslc_percentage='" + hslc_percentage + '\'' +
                ", hs_year='" + hs_year + '\'' +
                ", hs_stream='" + hs_stream + '\'' +
                ", hs_board='" + hs_board + '\'' +
                ", hs_percentage='" + hs_percentage + '\'' +
                ", dig_year='" + dig_year + '\'' +
                ", dig_clg_uni='" + dig_clg_uni + '\'' +
                ", dig_specification='" + dig_specification + '\'' +
                ", dig_percentage='" + dig_percentage + '\'' +
                ", diploma_status=" + diploma_status +
                '}';
    }

}
