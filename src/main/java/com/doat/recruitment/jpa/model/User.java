package com.doat.recruitment.jpa.model;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import com.doat.recruitment.jpa.dto.ApplicationDTO;

@Entity
@Table(name="user")
public class User {
    @Id
    private String username;
    private String password;
    private String role;
    private Boolean active;
     
	public User(Registration registration) {
		this.username = registration.getEmail();
		this.password = registration.getPassword();
		this.role = "USER";
		this.active = true;
	}
	public User() {
	}
	public User(ApplicationDTO application) {
		this.username = application.getUsername();
		this.password = application.getPassword();
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
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	public Boolean getActive() {
		return active;
	}
	public void setActive(Boolean active) {
		this.active = active;
    }
	@Override
	public String toString() {
		return "User [active=" + active + ", password=" + password + ", role=" + role + ", username=" + username + "]";
    }
	
   
    
    
    
}