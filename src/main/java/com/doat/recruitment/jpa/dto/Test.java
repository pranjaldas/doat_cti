package com.doat.recruitment.jpa.dto;

public class Test {
    private String reg_no;
	private String name;
	private String training_prg_id;
    
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
	public Test() {
    }
	public Test(String reg_no, String name) {
		this.reg_no = reg_no;
		this.name = name;
	}
	public Test(String reg_no, String name, String training_prg_id) {
		this.reg_no = reg_no;
		this.name = name;
		this.training_prg_id = training_prg_id;
	}
	public String getTraining_prg_id() {
		return training_prg_id;
	}
	public void setTraining_prg_id(String training_prg_id) {
		this.training_prg_id = training_prg_id;
	}
    
    
    
}