package com.doat.recruitment.jpa.model;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity

public class Trainer {
    @Id
    private String trainer_id;
    private String trainer_name;
    private String designation;
    public Trainer(String trainer_id, String trainer_name, String designation) {
		this.trainer_id = trainer_id;
		this.trainer_name = trainer_name;
		this.designation = designation;
	}
	public Trainer() {
	}
    
    
	public String getTrainer_id() {
		return trainer_id;
	}
	public void setTrainer_id(String trainer_id) {
		this.trainer_id = trainer_id;
	}
	public String getTrainer_name() {
		return trainer_name;
	}
	public void setTrainer_name(String trainer_name) {
		this.trainer_name = trainer_name;
	}
	public String getDesignation() {
		return designation;
	}
	public void setDesignation(String designation) {
		this.designation = designation;
	}
	@Override
	public String toString() {
		return "Trainer [designation=" + designation + ", trainer_id=" + trainer_id + ", trainer_name=" + trainer_name
				+ "]";
	}
	
    
}