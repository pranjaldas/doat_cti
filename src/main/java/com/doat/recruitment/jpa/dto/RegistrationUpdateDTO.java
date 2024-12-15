package com.doat.recruitment.jpa.dto;

public class RegistrationUpdateDTO {
    private String reg_id;
	private String name;
	private String employee_no;
	private String department_no;
	private String phone;
	private String email;
	private String password;
    private String username;
    
	public String getReg_id() {
		return reg_id;
	}
	public void setReg_id(String reg_id) {
		this.reg_id = reg_id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmployee_no() {
		return employee_no;
	}
	public void setEmployee_no(String employee_no) {
		this.employee_no = employee_no;
	}
	public String getDepartment_no() {
		return department_no;
	}
	public void setDepartment_no(String department_no) {
		this.department_no = department_no;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public RegistrationUpdateDTO(String reg_id, String name, String employee_no, String department_no, String phone,
			String email, String password, String username) {
		this.reg_id = reg_id;
		this.name = name;
		this.employee_no = employee_no;
		this.department_no = department_no;
		this.phone = phone;
		this.email = email;
		this.password = password;
		this.username = username;
	}
	public RegistrationUpdateDTO() {
	}
	@Override
	public String toString() {
		return "RegistrationUpdateDTO [department_no=" + department_no + ", email=" + email + ", employee_no="
				+ employee_no + ", name=" + name + ", password=" + password + ", phone=" + phone + ", reg_id=" + reg_id
				+ ", username=" + username + "]";
	}
    
}