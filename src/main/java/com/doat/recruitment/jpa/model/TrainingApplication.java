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
	public String application_status;
	public String designation;
	public String DDO_CODE;
	public String reason;
	public Boolean publish;
	
	
	public TrainingApplication() {
		super();
	
	}
	public TrainingApplication(int application_id, String reg_no, String name, String employee_no,
			String department_no, String training_prog_id, String application_status, String designation, String DDO_CODE,String reason,Boolean publish) {
		super();
		this.application_id = application_id;
		this.reg_no = reg_no;
		this.name = name;
		this.employee_no = employee_no;
		this.department_no = department_no;
		this.training_prog_id = training_prog_id;
		this.application_status=application_status;
		this.designation=designation;
		this.DDO_CODE=DDO_CODE;
		this.reason=reason;
		this.publish=publish;
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

	@Override
	public String toString() {
		return "TrainingApplication [DDO_CODE=" + DDO_CODE + ", application_id=" + application_id
				+ ", application_status=" + application_status + ", department_no=" + department_no + ", designation="
				+ designation + ", employee_no=" + employee_no + ", name=" + name + ", publish=" + publish + ", reason="
				+ reason + ", reg_no=" + reg_no + ", training_prog_id=" + training_prog_id + "]";
	}
	
	
	
}
