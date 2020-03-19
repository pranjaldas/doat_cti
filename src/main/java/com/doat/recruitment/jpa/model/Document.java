/*
 * Copyright (c) 2020. All rights reserved to Directorate Of accounts and Treasuries, Guwahati.
 * @Author: Pranjal Das
 */

package com.doat.recruitment.jpa.model;

import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;
import java.util.Arrays;

@Entity
@Table(name = "document_details")
public class Document {
    @Id
    @GeneratedValue(generator = "uuid")
    @GenericGenerator(name = "uuid", strategy = "uuid2")
    private String doc_id;

    private String reg_id;

    private String doc_name;

    private String doc_type;

    @Lob
    private byte[] data;

    public Document() {
    }

    public Document(String reg_id, String doc_name, String doc_type, byte[] data) {
        this.reg_id = reg_id;
        this.doc_name = doc_name;
        this.doc_type = doc_type;
        this.data = data;
    }

    public String getDoc_id() {
        return doc_id;
    }

    public void setDoc_id(String doc_id) {
        this.doc_id = doc_id;
    }

    public String getReg_id() {
        return reg_id;
    }

    public void setReg_id(String reg_id) {
        this.reg_id = reg_id;
    }

    public String getDoc_name() {
        return doc_name;
    }

    public void setDoc_name(String doc_name) {
        this.doc_name = doc_name;
    }

    public String getDoc_type() {
        return doc_type;
    }

    public void setDoc_type(String doc_type) {
        this.doc_type = doc_type;
    }

    public byte[] getData() {
        return data;
    }

    public void setData(byte[] data) {
        this.data = data;
    }

    @Override
    public String toString() {
        return "Document{" +
                "doc_id=" + doc_id +
                ", reg_id='" + reg_id + '\'' +
                ", doc_name='" + doc_name + '\'' +
                ", doc_type='" + doc_type + '\'' +
                ", data=" + Arrays.toString(data) +
                '}';
    }
}
