package com.doat.recruitment.jpa.dto;

public class DTOselectedEmployee {
    private String name;
    private String desig;
    private String ddoNo;
    private String empId;
    private String traningName;

    public DTOselectedEmployee(String name, String desig, String ddoNo, String empId, String traningName) {
        this.name = name;
        this.desig = desig;
        this.ddoNo = ddoNo;
        this.empId = empId;
        this.traningName = traningName;
    }

    public DTOselectedEmployee() {
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDesig() {
        return desig;
    }

    public void setDesig(String desig) {
        this.desig = desig;
    }

    public String getDdoNo() {
        return ddoNo;
    }

    public void setDdoNo(String ddoNo) {
        this.ddoNo = ddoNo;
    }

    public String getEmpId() {
        return empId;
    }

    public void setEmpId(String empId) {
        this.empId = empId;
    }

    public String getTraningName() {
        return traningName;
    }

    public void setTraningName(String traningName) {
        this.traningName = traningName;
    }

    @Override
    public String toString() {
        return "selectedEmployee [ddoNo=" + ddoNo + ", desig=" + desig + ", empId=" + empId + ", name=" + name
                + ", traningName=" + traningName + "]";
    }
    
    

}