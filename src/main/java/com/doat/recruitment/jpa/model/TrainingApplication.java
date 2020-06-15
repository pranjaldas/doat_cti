package com.doat.recruitment.jpa.model;

import java.time.LocalDate;

import javax.persistence.*;

import com.doat.recruitment.jpa.dto.ApplicationDTO;

import org.hibernate.annotations.CreationTimestamp;


@Entity
@Table(name = "training_applications")
public class TrainingApplication {
	@Id
	public String application_id;
	public String reg_no;
	public String name;
	public String employee_no;
	
	public String department_no;
	public String training_prog_id;
	public String application_status;
	public String designation;
	public String DDO_CODE;
	public String reason;
	public Boolean publish;
	@CreationTimestamp
	private LocalDate training_apply_date;
	
	public TrainingApplication(Registration registration,ApplicationDTO application,Employee employee) {
		this.reg_no = registration.getReg_id();
		this.name = registration.getName();
		this.employee_no = registration.getEmployee_no();
		this.department_no = registration.getDepartment_no();
		this.training_prog_id = application.getTraining_prg_id();
		this.application_status = "pending";
		this.designation = employee.getDesignation();
		this.DDO_CODE = employee.getDdo_code();
		this.reason = "";
		this.publish = false;
	}
	public TrainingApplication() {
		super();
	
	}
	
	
	public String getApplication_id() {
		return application_id;
	}
	public void setApplication_id(String application_id) {
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

	public String getApplication_status() {
		return application_status;
	}

	public void setApplication_status(String application_status) {
		this.application_status = application_status;
	}

	public String getReason() {
		return reason;
	}

	public void setReason(String reason) {
		this.reason = reason;
	}

	public String getDesignation() {
		return designation;
	}

	public void setDesignation(String designation) {
		this.designation = designation;
	}

	public String getDDO_CODE() {
		return DDO_CODE;
	}

	public void setDDO_CODE(String dDO_CODE) {
		DDO_CODE = dDO_CODE;
	}
	

	public Boolean getPublish() {
		return publish;
	}

	public void setPublish(Boolean publish) {
		this.publish = publish;
	}

	
	public TrainingApplication(String application_id, String reg_no, String name, String employee_no, String department_no,
			String training_prog_id, String application_status, String designation, String dDO_CODE, String reason,
			Boolean publish, LocalDate training_apply_date) {
		this.application_id = application_id;
		this.reg_no = reg_no;
		this.name = name;
		this.employee_no = employee_no;
		this.department_no = department_no;
		this.training_prog_id = training_prog_id;
		this.application_status = application_status;
		this.designation = designation;
		DDO_CODE = dDO_CODE;
		this.reason = reason;
		this.publish = publish;
		this.training_apply_date = training_apply_date;
	}
	@Override
	public String toString() {
		return "TrainingApplication [DDO_CODE=" + DDO_CODE + ", application_id=" + application_id
				+ ", application_status=" + application_status + ", department_no=" + department_no + ", designation="
				+ designation + ", employee_no=" + employee_no + ", name=" + name + ", publish=" + publish + ", reason="
				+ reason + ", reg_no=" + reg_no + ", training_apply_date=" + training_apply_date + ", training_prog_id="
				+ training_prog_id + "]";
	}
	public LocalDate getTraining_apply_date() {
		return training_apply_date;
	}
	public void setTraining_apply_date(LocalDate training_apply_date) {
		this.training_apply_date = training_apply_date;
	}
	
	
	
	
}
