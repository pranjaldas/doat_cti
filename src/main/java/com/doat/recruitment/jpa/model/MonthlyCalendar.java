package com.doat.recruitment.jpa.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class MonthlyCalendar {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int id;
    private String month;
	public MonthlyCalendar(int id, String month) {
		this.id = id;
		this.month = month;
	}
	public MonthlyCalendar() {
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getMonth() {
		return month;
	}
	public void setMonth(String month) {
		this.month = month;
	}
	@Override
	public String toString() {
		return "MonthlyCalendar [id=" + id + ", month=" + month + "]";
	}
    
    
}