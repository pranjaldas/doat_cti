package com.doat.recruitment.jpa.model;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="trainee_employee")
public class TraineeEmployee {
	@Id
	private String trainee_id;
	private String employee_id;
	private String trainee_name;
	private String designation;
	private String ddo_code;
	private String training_program_id;
	public TraineeEmployee(String trainee_id, String employee_id, String trainee_name, String designation,
			String ddo_code, String training_program_id) {
		super();
		this.trainee_id = trainee_id;
		this.employee_id = employee_id;
		this.trainee_name = trainee_name;
		this.designation = designation;
		this.ddo_code = ddo_code;
		this.training_program_id = training_program_id;
	}
	public TraineeEmployee() {
		super();
	}
	public String getTrainee_id() {
		return trainee_id;
	}
	public void setTrainee_id(String trainee_id) {
		this.trainee_id = trainee_id;
	}
	public String getEmployee_id() {
		return employee_id;
	}
	public void setEmployee_id(String employee_id) {
		this.employee_id = employee_id;
	}
	public String getTrainee_name() {
		return trainee_name;
	}
	public void setTrainee_name(String trainee_name) {
		this.trainee_name = trainee_name;
	}
	public String getDesignation() {
		return designation;
	}
	public void setDesignation(String designation) {
		this.designation = designation;
	}
	public String getDdo_code() {
		return ddo_code;
	}
	public void setDdo_code(String ddo_code) {
		this.ddo_code = ddo_code;
	}
	public String getTraining_program_id() {
		return training_program_id;
	}
	public void setTraining_program_id(String training_program_id) {
		this.training_program_id = training_program_id;
	}
	@Override
	public String toString() {
		return "TraineeEmployee [trainee_id=" + trainee_id + ", employee_id=" + employee_id + ", trainee_name="
				+ trainee_name + ", designation=" + designation + ", ddo_code=" + ddo_code + ", training_program_id="
				+ training_program_id + "]";
	}
	

}
