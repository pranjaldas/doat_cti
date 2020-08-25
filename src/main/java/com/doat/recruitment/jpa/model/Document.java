/*
 * Copyright (c) 2020. All rights reserved to Directorate Of accounts and Treasuries, Guwahati.
 * @Author: Pranjal Das
 */

package com.doat.recruitment.jpa.model;


import javax.persistence.*;

@Entity

public class Document {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int doc_id;
    private String document_detail;
    private String document_path;
    @Transient
    private String document_string;

    public Document() {
    }

    public Document(int doc_id, String document_detail, String document_path, String document_string) {
        this.doc_id = doc_id;
        this.document_detail = document_detail;
        this.document_path = document_path;
        this.document_string = document_string;
    }

    public int getDoc_id() {
        return doc_id;
    }

    public void setDoc_id(int doc_id) {
        this.doc_id = doc_id;
    }

    public String getDocument_detail() {
        return document_detail;
    }

    public void setDocument_detail(String document_detail) {
        this.document_detail = document_detail;
    }

    public String getDocument_path() {
        return document_path;
    }

    public void setDocument_path(String document_path) {
        this.document_path = document_path;
    }

    public String getDocument_string() {
        return document_string;
    }

    public void setDocument_string(String document_string) {
        this.document_string = document_string;
    }

    @Override
    public String toString() {
        return "Document{" +
                "doc_id=" + doc_id +
                ", document_detail='" + document_detail + '\'' +
                ", document_path='" + document_path + '\'' +
                ", document_string='" + document_string + '\'' +
                '}';
    }
}
