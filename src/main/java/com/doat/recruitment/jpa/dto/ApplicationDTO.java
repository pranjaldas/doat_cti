package com.doat.recruitment.jpa.dto;

import org.springframework.stereotype.Component;

@Component
public class ApplicationDTO {
    private String training_prg_id;
    private String reg_id;
    private String username;
    private String password;
    
	public String getTraining_prg_id() {
		return training_prg_id;
	}
	public void setTraining_prg_id(String training_prg_id) {
		this.training_prg_id = training_prg_id;
	}
	public String getReg_id() {
		return reg_id;
	}
	public void setReg_id(String reg_id) {
		this.reg_id = reg_id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public ApplicationDTO() {
    }
	public ApplicationDTO(String training_prg_id, String reg_id, String username, String password) {
		this.training_prg_id = training_prg_id;
		this.reg_id = reg_id;
		this.username = username;
		this.password = password;
	}
	@Override
	public String toString() {
		return "ApplicationDTO [password=" + password + ", reg_id=" + reg_id + ", training_prg_id=" + training_prg_id
				+ ", username=" + username + "]";
	}
       
}