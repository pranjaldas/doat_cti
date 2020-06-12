package com.doat.recruitment.jpa.model;

import java.sql.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name="events")
public class Events {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int event_id;
    
	@DateTimeFormat(pattern = "yyyy-mm-dd")
    private Date start;
    
	@DateTimeFormat(pattern = "yyyy-mm-dd")
    private Date end;

    private String text;
    private String color;

    public Events(int event_id,Date start, Date end, String text, String color) {
        this.event_id=event_id;
        this.start = start;
        this.end = end;
        this.text = text;
        this.color = color;
    }
    public Events(TrainingProgram program){
        this.text=program.getTraining_prg_name();
        this.start=program.getTraining_start_date();
        this.end=program.getTraining_end_date();
        this.color="#678RT90";
    }
	public int getEvent_id() {
		return event_id;
	}
	public void setEvent_id(int event_id) {
		this.event_id = event_id;
	}
	public Date getStart() {
		return start;
	}
	public void setStart(Date start) {
		this.start = start;
	}
	public Date getEnd() {
		return end;
	}
	public void setEnd(Date end) {
		this.end = end;
	}
	public String getText() {
		return text;
	}
	public void setText(String text) {
		this.text = text;
	}
	public String getColor() {
		return color;
	}
	public void setColor(String color) {
		this.color = color;
	}

    
    
    
    
}