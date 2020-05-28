package com.doat.recruitment.jpa.dto;


import com.doat.recruitment.jpa.model.Department;
import com.doat.recruitment.jpa.model.Employee;
import com.doat.recruitment.jpa.model.Registration;

public class ProfileDTO {
    private String reg_id;
	private String name;
	private String department_no;
	private String phone;
    private String email;
    private String employee_id;
    private String employee_name;
    private String employee_join_date;
    private String department_id;
    private String original_salary;
    private String current_salary;
    private String region;
    private String designation;
    private String ddo_code;
    private String department_name;
    private String department_loc;
	public ProfileDTO(final Registration registration,final Employee employee,final Department department) {
		this.reg_id = registration.getReg_id();
		this.name = registration.getName();
		this.phone = registration.getPhone();
		this.email = registration.getEmail();
		this.employee_id = employee.getEmployee_id();
		this.employee_name =employee.getEmployee_name();
		this.employee_join_date = employee.getEmployee_join_date();
		this.department_id = department.getDepartment_id();
		this.original_salary = employee.getOriginal_salary();
		this.current_salary = employee.getCurrent_salary();
		this.region = employee.getRegion();
		this.designation = employee.getDesignation();
        this.ddo_code = employee.getDdo_code();
        this.department_no = department.getDepartment_id();
		this.department_name =department.getDepartment_name();
		this.department_loc = department.getDepartment_loc();
    }
    
	public ProfileDTO() {
	}
	public String getReg_id() {
		return reg_id;
	}
	public void setReg_id(final String reg_id) {
		this.reg_id = reg_id;
	}
	public String getName() {
		return name;
	}
	public void setName(final String name) {
		this.name = name;
	}
	
	public String getDepartment_no() {
		return department_no;
	}
	public void setDepartment_no(final String department_no) {
		this.department_no = department_no;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(final String phone) {
		this.phone = phone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(final String email) {
		this.email = email;
	}
	public String getEmployee_id() {
		return employee_id;
	}
	public void setEmployee_id(final String employee_id) {
		this.employee_id = employee_id;
	}
	public String getEmployee_name() {
		return employee_name;
	}
	public void setEmployee_name(final String employee_name) {
		this.employee_name = employee_name;
	}
	public String getEmployee_join_date() {
		return employee_join_date;
	}
	public void setEmployee_join_date(final String employee_join_date) {
		this.employee_join_date = employee_join_date;
	}
	public String getDepartment_id() {
		return department_id;
	}
	public void setDepartment_id(final String department_id) {
		this.department_id = department_id;
	}
	public String getOriginal_salary() {
		return original_salary;
	}
	public void setOriginal_salary(final String original_salary) {
		this.original_salary = original_salary;
	}
	public String getCurrent_salary() {
		return current_salary;
	}
	public void setCurrent_salary(final String current_salary) {
		this.current_salary = current_salary;
	}
	public String getRegion() {
		return region;
	}
	public void setRegion(final String region) {
		this.region = region;
	}
	public String getDesignation() {
		return designation;
	}
	public void setDesignation(final String designation) {
		this.designation = designation;
	}
	public String getDdo_code() {
		return ddo_code;
	}
	public void setDdo_code(final String ddo_code) {
		this.ddo_code = ddo_code;
	}
	public String getDepartment_name() {
		return department_name;
	}
	public void setDepartment_name(final String department_name) {
		this.department_name = department_name;
	}
	public String getDepartment_loc() {
		return department_loc;
	}
	public void setDepartment_loc(final String department_loc) {
		this.department_loc = department_loc;
	}
	// public ProfileDTO(String reg_id, String name, String employee_no, String department_no, String phone, String email,
	// 		String employee_id, String employee_name, String employee_join_date, String department_id,
	// 		String original_salary, String current_salary, String region, String designation, String ddo_code,
	// 		String department_name, String department_loc) {
	// 	this.reg_id = reg_id;
	// 	this.name = name;
	// 	this.employee_no = employee_no;
	// 	this.department_no = department_no;
	// 	this.phone = phone;
	// 	this.email = email;
	// 	this.employee_id = employee_id;
	// 	this.employee_name = employee_name;
	// 	this.employee_join_date = employee_join_date;
	// 	this.department_id = department_id;
	// 	this.original_salary = original_salary;
	// 	this.current_salary = current_salary;
	// 	this.region = region;
	// 	this.designation = designation;
	// 	this.ddo_code = ddo_code;
	// 	this.department_name = department_name;
	// 	this.department_loc = department_loc;
	// }

	@Override
	public String toString() {
		return "ProfileDTO [current_salary=" + current_salary + ", ddo_code=" + ddo_code + ", department_id="
				+ department_id + ", department_loc=" + department_loc + ", department_name=" + department_name
				+ ", department_no=" + department_no + ", designation=" + designation + ", email=" + email
				+ ", employee_id=" + employee_id + ", employee_join_date=" + employee_join_date + ", employee_name="
				+ employee_name + ", name=" + name + ", original_salary=" + original_salary + ", phone=" + phone
				+ ", reg_id=" + reg_id + ", region=" + region + "]";
	}

	
    
    
    

}