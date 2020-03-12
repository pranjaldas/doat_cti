package com.doat.recruitment.jpa.model;

import javax.persistence.Entity;
import javax.persistence.Table;


public class Qualification {
    //Attributes
    private Long qualification_id;
    private String qualification_type;
    private String boardORuniversity;
    private float percentage;
    private String diploma_status;
    //Constructors
    public Qualification(Long qualification_id,String qualification_type, String boardORuniversity, float percentage, String diploma_status) {
        this.qualification_id=qualification_id;
        this.qualification_type = qualification_type;
        this.boardORuniversity = boardORuniversity;
        this.percentage = percentage;
        this.diploma_status = diploma_status;
    }
}
