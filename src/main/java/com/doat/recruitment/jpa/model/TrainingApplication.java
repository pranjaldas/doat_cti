package com.doat.recruitment.jpa.model;

import javax.persistence.*;

@Entity
@Table(name = "training_applications")
public class TrainingApplication {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	public int application_id;
	public String reg_no;
	public String name;
	public String employee_no;
	public String department_no;
	public String training_prog_id;
	
	
	public TrainingApplication() {
		super();
	
	}
	public TrainingApplication(int application_id, String reg_no, String name, String employee_no,
			String department_no, String training_prog_id) {
		super();
		this.application_id = application_id;
		this.reg_no = reg_no;
		this.name = name;
		this.employee_no = employee_no;
		this.department_no = department_no;
		this.training_prog_id = training_prog_id;
	}
	public int getApplication_id() {
		return application_id;
	}
	public void setApplication_id(int application_id) {
		this.application_id = application_id;
	}
	public String getReg_no() {
		return reg_no;
	}
	public void setReg_no(String reg_no) {
		this.reg_no = reg_no;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmployee_no() {
		return employee_no;
	}
	public void setEmployee_no(String employee_no) {
		this.employee_no = employee_no;
	}
	public String getDepartment_no() {
		return department_no;
	}
	public void setDepartment_no(String department_no) {
		this.department_no = department_no;
	}
	public String getTraining_prog_id() {
		return training_prog_id;
	}
	public void setTraining_prog_id(String training_prog_id) {
		this.training_prog_id = training_prog_id;
	}
	@Override
	public String toString() {
		return "TrainingApplication [application_id=" + application_id + ", reg_no=" + reg_no + ", name=" + name
				+ ", employee_no=" + employee_no + ", department_no=" + department_no + ", training_prog_id="
				+ training_prog_id + "]";
	}
}
