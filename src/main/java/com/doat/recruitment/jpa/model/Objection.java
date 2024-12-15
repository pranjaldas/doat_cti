/*
 * Copyright (c) 2020. All rights reserved to Directorate Of accounts and Treasuries, Guwahati.
 * @Author: Pranjal Das
 */

package com.doat.recruitment.jpa.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Objection {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int objection_id;
    private String objection_from;
    private String objection_to;
    private String reference_app_id;
    private String objjection_status;

    public Objection(int objection_id, String objection_from, String objection_to, String reference_app_id, String objjection_status) {
        this.objection_id = objection_id;
        this.objection_from = objection_from;
        this.objection_to = objection_to;
        this.reference_app_id = reference_app_id;
        this.objjection_status = objjection_status;
    }

    public Objection() {
    }

    public int getObjection_id() {
        return objection_id;
    }

    public void setObjection_id(int objection_id) {
        this.objection_id = objection_id;
    }

    public String getObjection_from() {
        return objection_from;
    }

    public void setObjection_from(String objection_from) {
        this.objection_from = objection_from;
    }

    public String getObjection_to() {
        return objection_to;
    }

    public void setObjection_to(String objection_to) {
        this.objection_to = objection_to;
    }

    public String getReference_app_id() {
        return reference_app_id;
    }

    public void setReference_app_id(String reference_app_id) {
        this.reference_app_id = reference_app_id;
    }

    public String getObjjection_status() {
        return objjection_status;
    }

    public void setObjjection_status(String objjection_status) {
        this.objjection_status = objjection_status;
    }

    @Override
    public String toString() {
        return "Objection{" +
                "objection_id=" + objection_id +
                ", objection_from='" + objection_from + '\'' +
                ", objection_to='" + objection_to + '\'' +
                ", reference_app_id='" + reference_app_id + '\'' +
                ", objjection_status='" + objjection_status + '\'' +
                '}';
    }
}
