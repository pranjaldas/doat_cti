package com.doat.recruitment.jpa.repository;

import java.util.List;

import com.doat.recruitment.jpa.model.Employee;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

public interface EmployeeRepository extends JpaRepository<Employee, String>{
    @Query(value="SELECT * FROM employee AS em WHERE em.manager=:employee_id",nativeQuery = true)
	List<Employee> findAllJuniors(@Param("employee_id") String  employee_id);
    
}

