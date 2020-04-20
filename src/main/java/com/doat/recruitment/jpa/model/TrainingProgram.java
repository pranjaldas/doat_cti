package com.doat.recruitment.jpa.model;

import java.sql.Date;
import java.time.LocalDate;
import java.time.LocalDateTime;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.Table;
import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.UpdateTimestamp;
import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name = "training_program")
public class TrainingProgram {
	@Id
	private String training_prg_id;
	private String training_prg_name;
	@Lob
	@Column(columnDefinition = "TEXT")
	private String training_description;
	private String training_prg_duration;
	private String training_prg_type;
	@DateTimeFormat(pattern = "yyyy-mm-dd")
	private Date training_start_date;
	@CreationTimestamp
	private LocalDate training_create_date;
	@UpdateTimestamp
	private LocalDateTime training_update_date;
	private String training_prg_trainer_id;
	private String training_status;
	private boolean display_status;

	public TrainingProgram() {
		super();
	}

	public TrainingProgram(String training_prg_id, String training_prg_name, String training_description,
			String training_prg_duration, String training_prg_type, Date training_start_date,
			LocalDate training_create_date, String training_prg_trainer_id, String training_status,
			boolean display_status) {
		super();
		this.training_prg_id = training_prg_id;
		this.training_prg_name = training_prg_name;
		this.training_description = training_description;
		this.training_prg_duration = training_prg_duration;
		this.training_prg_type = training_prg_type;
		this.training_start_date = training_start_date;
		this.training_create_date = training_create_date;
		this.training_prg_trainer_id = training_prg_trainer_id;
		this.training_status = training_status;
		this.display_status = display_status;
	}

	public String getTraining_prg_id() {
		return training_prg_id;
	}

	public void setTraining_prg_id(String training_prg_id) {
		this.training_prg_id = training_prg_id;
	}

	public String getTraining_prg_name() {
		return training_prg_name;
	}

	public void setTraining_prg_name(String training_prg_name) {
		this.training_prg_name = training_prg_name;
	}

	public String getTraining_description() {
		return training_description;
	}

	public void setTraining_description(String training_description) {
		this.training_description = training_description;
	}

	public String getTraining_prg_duration() {
		return training_prg_duration;
	}

	public void setTraining_prg_duration(String training_prg_duration) {
		this.training_prg_duration = training_prg_duration;
	}

	public String getTraining_prg_type() {
		return training_prg_type;
	}

	public void setTraining_prg_type(String training_prg_type) {
		this.training_prg_type = training_prg_type;
	}

	public Date getTraining_start_date() {
		return training_start_date;
	}

	public void setTraining_start_date(Date training_start_date) {
		this.training_start_date = training_start_date;
	}

	public LocalDate getTraining_create_date() {
		return training_create_date;
	}

	public void setTraining_create_date(LocalDate training_create_date) {
		this.training_create_date = training_create_date;
	}

	public String getTraining_prg_trainer_id() {
		return training_prg_trainer_id;
	}

	public void setTraining_prg_trainer_id(String training_prg_trainer_id) {
		this.training_prg_trainer_id = training_prg_trainer_id;
	}

	public String getTraining_status() {
		return training_status;
	}

	public void setTraining_status(String training_status) {
		this.training_status = training_status;
	}

	public boolean isDisplay_status() {
		return display_status;
	}

	public void setDisplay_status(boolean display_status) {
		this.display_status = display_status;
	}

	@Override
	public String toString() {
		return "TrainingProgram [display_status=" + display_status + ", training_create_date=" + training_create_date
				+ ", training_description=" + training_description + ", training_prg_duration=" + training_prg_duration
				+ ", training_prg_id=" + training_prg_id + ", training_prg_name=" + training_prg_name
				+ ", training_prg_trainer_id=" + training_prg_trainer_id + ", training_prg_type=" + training_prg_type
				+ ", training_start_date=" + training_start_date + ", training_status=" + training_status + "]";
	}

}
