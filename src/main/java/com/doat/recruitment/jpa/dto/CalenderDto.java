package com.doat.recruitment.jpa.dto;

import java.time.LocalDate;
import java.util.Date;

import com.doat.recruitment.jpa.model.TrainingProgram;

public class CalenderDto {
    
	private String TrainingId;
	private String Training_Type;
    private LocalDate Advertise_Date;
    private Date Start_Date;
	private Date End_Date;
	private String Trainers;
	private String Training_Status;
	public CalenderDto(String trainingId, String training_Type, LocalDate advertise_Date, Date start_Date,
			Date end_Date, String trainers, String training_Status) {
		TrainingId = trainingId;
		Training_Type = training_Type;
		Advertise_Date = advertise_Date;
		Start_Date = start_Date;
		End_Date = end_Date;
		Trainers = trainers;
		Training_Status = training_Status;
    }
    
	public CalenderDto() {
	}
	public String getTrainingId() {
		return TrainingId;
	}
	public void setTrainingId(String trainingId) {
		TrainingId = trainingId;
	}
	public String getTraining_Type() {
		return Training_Type;
	}
	public void setTraining_Type(String training_Type) {
		Training_Type = training_Type;
	}
	public LocalDate getAdvertise_Date() {
		return Advertise_Date;
	}
	public void setAdvertise_Date(LocalDate advertise_Date) {
		Advertise_Date = advertise_Date;
	}
	public Date getStart_Date() {
		return Start_Date;
	}
	public void setStart_Date(Date start_Date) {
		Start_Date = start_Date;
	}
	public Date getEnd_Date() {
		return End_Date;
	}
	public void setEnd_Date(Date end_Date) {
		End_Date = end_Date;
	}
	public String getTrainers() {
		return Trainers;
	}
	public void setTrainers(String trainers) {
		Trainers = trainers;
	}
	public String getTraining_Status() {
		return Training_Status;
	}
	public void setTraining_Status(String training_Status) {
		Training_Status = training_Status;
	}
	@Override
	public String toString() {
		return "CalenderDto [Advertise_Date=" + Advertise_Date + ", End_Date=" + End_Date + ", Start_Date=" + Start_Date
				+ ", Trainers=" + Trainers + ", TrainingId=" + TrainingId + ", Training_Status=" + Training_Status
				+ ", Training_Type=" + Training_Type + "]";
	}

	public CalenderDto(TrainingProgram training) {
		TrainingId = training.getTraining_prg_id();
		Training_Type = training.getTraining_prg_type();
		Advertise_Date = training.getTraining_create_date();
		Start_Date = training.getTraining_start_date();
		End_Date = training.getTraining_end_date();
		Trainers = training.getTraining_prg_trainer_id();
		Training_Status = training.getTraining_status();
	}
    
	
}