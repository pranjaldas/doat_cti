package com.doat.recruitment.jpa.dto;

import com.doat.recruitment.jpa.model.TrainingApplication;
import com.doat.recruitment.jpa.model.TrainingProgram;
import org.springframework.stereotype.Component;

import java.sql.Date;
import java.time.LocalDate;
@Component
public class ApplicationInfoDTO {
	public String application_id;
	public String training_prog_id;
	private String training_prg_type;
	private Date training_end_date;
	private Date training_start_date;
	public String application_status;
	public String note;
	private LocalDate training_apply_date;
	private String document_detail;
	private String document_path;
	public ApplicationInfoDTO(String application_id, String training_prog_id, String training_prg_type,
			Date training_end_date, Date training_start_date, String application_status, String note,
			LocalDate training_apply_date, String document_detail, String document_path) {
		super();
		this.application_id = application_id;
		this.training_prog_id = training_prog_id;
		this.training_prg_type = training_prg_type;
		this.training_end_date = training_end_date;
		this.training_start_date = training_start_date;
		this.application_status = application_status;
		this.note = note;
		this.training_apply_date = training_apply_date;
		this.document_detail = document_detail;
		this.document_path = document_path;
	}
	public ApplicationInfoDTO() {
		super();
		
	}
	public ApplicationInfoDTO(TrainingApplication application,TrainingProgram program) {
		super();
		this.application_id = application.getApplication_id();
		this.training_prog_id = application.getTraining_prog_id();
		this.training_prg_type = program.getTraining_prg_type();
		this.training_end_date = program.getTraining_end_date();
		this.training_start_date = program.getTraining_start_date();
		this.application_status = application.getApplication_status();
		this.note = application.getReason();
		this.training_apply_date = application.getTraining_apply_date();
		this.document_detail = "details";
		this.document_path = "path";
	}

	public String getApplication_id() {
		return application_id;
	}
	public void setApplication_id(String application_id) {
		this.application_id = application_id;
	}
	public String getTraining_prog_id() {
		return training_prog_id;
	}
	public void setTraining_prog_id(String training_prog_id) {
		this.training_prog_id = training_prog_id;
	}
	public String getTraining_prg_type() {
		return training_prg_type;
	}
	public void setTraining_prg_type(String training_prg_type) {
		this.training_prg_type = training_prg_type;
	}
	public Date getTraining_end_date() {
		return training_end_date;
	}
	public void setTraining_end_date(Date training_end_date) {
		this.training_end_date = training_end_date;
	}
	public Date getTraining_start_date() {
		return training_start_date;
	}
	public void setTraining_start_date(Date training_start_date) {
		this.training_start_date = training_start_date;
	}
	public String getApplication_status() {
		return application_status;
	}
	public void setApplication_status(String application_status) {
		this.application_status = application_status;
	}
	public String getNote() {
		return note;
	}
	public void setNote(String note) {
		this.note = note;
	}
	public LocalDate getTraining_apply_date() {
		return training_apply_date;
	}
	public void setTraining_apply_date(LocalDate training_apply_date) {
		this.training_apply_date = training_apply_date;
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
	@Override
	public String toString() {
		return "ApplicationInfoDTO [application_id=" + application_id + ", training_prog_id=" + training_prog_id
				+ ", training_prg_type=" + training_prg_type + ", training_end_date=" + training_end_date
				+ ", training_start_date=" + training_start_date + ", application_status=" + application_status
				+ ", note=" + note + ", training_apply_date=" + training_apply_date + ", document_detail="
				+ document_detail + ", document_path=" + document_path + "]";
	}
	
	

	

}
