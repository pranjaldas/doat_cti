package com.doat.recruitment.jpa.model;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "department")
public class Department {
    @Id
    private String department_id;
    private String department_name;
    private String department_loc;
    

    public Department(String department_id, String department_name, String department_loc) {
        this.department_id = department_id;
        this.department_name = department_name;
        this.department_loc = department_loc;
    }

    public Department() {
    }

    public String getDepartment_id() {
        return department_id;
    }

    public void setDepartment_id(String department_id) {
        this.department_id = department_id;
    }

    public String getDepartment_name() {
        return department_name;
    }

    public void setDepartment_name(String department_name) {
        this.department_name = department_name;
    }

    public String getDepartment_loc() {
        return department_loc;
    }

    public void setDepartment_loc(String department_loc) {
        this.department_loc = department_loc;
    }

    @Override
    public String toString() {
        return "Department [department_id=" + department_id + ", department_loc=" + department_loc
                + ", department_name=" + department_name + "]";
    }
    
    
}