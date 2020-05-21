package com.doat.recruitment.jpa.model;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="user")
public class User {
    @Id
    private String username;
    private String password;
    private String role;
    private Boolean active;
     
	public User(String username, String password, String role, Boolean active) {
		this.username = username;
		this.password = password;
		this.role = role;
		this.active = active;
	}
	public User() {
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