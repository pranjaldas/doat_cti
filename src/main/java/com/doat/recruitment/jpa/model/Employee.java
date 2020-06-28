package com.doat.recruitment.jpa.model;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="employee")
public class Employee {
    @Id
    private String employee_id;
    private String employee_name;
    private String employee_join_date;
    private String employee_retire_date;
    private String department_id;
    private String original_salary;
    private String current_salary;
    private String region;
    private String designation;
    private String ddo_code;
    private String manager;

    public Employee(String employee_id, String employee_name, String employee_join_date,String employee_retire_date, String department_id,
            String original_salary, String current_salary, String region, String designation, String ddo_code,String manager) {
        this.employee_id = employee_id;
        this.employee_name = employee_name;
        this.employee_join_date = employee_join_date;
        this.employee_retire_date= employee_retire_date;
        this.department_id = department_id;
        this.original_salary = original_salary;
        this.current_salary = current_salary;
        this.region = region;
        this.designation = designation;
        this.ddo_code = ddo_code;
        this.manager = manager;
    }
    
    public Employee() {
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

    public String getDepartment_id() {
        return department_id;
    }

    public void setDepartment_id(String department_id) {
        this.department_id = department_id;
    }

    public String getOriginal_salary() {
        return original_salary;
    }

    public void setOriginal_salary(String original_salary) {
        this.original_salary = original_salary;
    }

    public String getCurrent_salary() {
        return current_salary;
    }

    public void setCurrent_salary(String current_salary) {
        this.current_salary = current_salary;
    }

    public String getRegion() {
        return region;
    }

    public void setRegion(String region) {
        this.region = region;
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

	public String getEmployee_retire_date() {
		return employee_retire_date;
	}

	public void setEmployee_retire_date(String employee_retire_date) {
		this.employee_retire_date = employee_retire_date;
	}

	@Override
	public String toString() {
		return "Employee [current_salary=" + current_salary + ", ddo_code=" + ddo_code + ", department_id="
				+ department_id + ", designation=" + designation + ", employee_id=" + employee_id
				+ ", employee_join_date=" + employee_join_date + ", employee_name=" + employee_name
				+ ", employee_retire_date=" + employee_retire_date + ", manager=" + manager + ", original_salary="
				+ original_salary + ", region=" + region + "]";
	}
    
   
}