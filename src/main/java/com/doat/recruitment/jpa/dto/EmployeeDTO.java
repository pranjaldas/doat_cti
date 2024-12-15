package com.doat.recruitment.jpa.dto;

import com.doat.recruitment.jpa.model.Employee;

public class EmployeeDTO {
    private String employee_id;
    private String employee_name;
    private String employee_join_date;
    private String employee_retire_date;
    private String department_id;
    private String designation;
    private String ddo_code;
    private String manager;
	public EmployeeDTO(Employee employee,String department,String manager) {
		this.employee_id = employee.getEmployee_id();
		this.employee_name = employee.getEmployee_name();
		this.employee_join_date = employee.getEmployee_join_date();
		this.employee_retire_date =employee.getEmployee_retire_date();
		this.department_id = department;
		this.designation = employee.getDesignation();
		this.ddo_code = employee.getDdo_code();
		this.manager = manager;
    }
    
	public String getEmployee_id() {
		return employee_id;
	}
	public void setEmployee_id(String employee_id) {
		this.employee_id = employee_id;
	}
	public String getEmployee_name() {
		return employee_name;
	}
	public void setEmployee_name(String employee_name) {
		this.employee_name = employee_name;
	}
	public String getEmployee_join_date() {
		return employee_join_date;
	}
	public void setEmployee_join_date(String employee_join_date) {
		this.employee_join_date = employee_join_date;
	}
	public String getEmployee_retire_date() {
		return employee_retire_date;
	}
	public void setEmployee_retire_date(String employee_retire_date) {
		this.employee_retire_date = employee_retire_date;
	}
	public String getDepartment_id() {
		return department_id;
	}
	public void setDepartment_id(String department_id) {
		this.department_id = department_id;
	}
	public String getDesignation() {
		return designation;
	}
	public void setDesignation(String designation) {
		this.designation = designation;
	}
	public String getDdo_code() {
		return ddo_code;
	}
	public void setDdo_code(String ddo_code) {
		this.ddo_code = ddo_code;
	}
	public String getManager() {
		return manager;
	}
	public void setManager(String manager) {
		this.manager = manager;
	}

	public EmployeeDTO() {
	}

	@Override
	public String toString() {
		return "EmployeeDTO [ddo_code=" + ddo_code + ", department_id=" + department_id + ", designation=" + designation
				+ ", employee_id=" + employee_id + ", employee_join_date=" + employee_join_date + ", employee_name="
				+ employee_name + ", employee_retire_date=" + employee_retire_date + ", manager=" + manager + "]";
	}
    
    
}