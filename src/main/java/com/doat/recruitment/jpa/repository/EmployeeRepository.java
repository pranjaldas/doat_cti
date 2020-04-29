package com.doat.recruitment.jpa.repository;

import com.doat.recruitment.jpa.model.Employee;

import org.springframework.data.jpa.repository.JpaRepository;

public interface EmployeeRepository extends JpaRepository<Employee, String>{

}

