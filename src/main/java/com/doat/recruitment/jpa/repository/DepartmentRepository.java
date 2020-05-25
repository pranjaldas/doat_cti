package com.doat.recruitment.jpa.repository;

import com.doat.recruitment.jpa.model.Department;

import org.springframework.data.jpa.repository.JpaRepository;

public interface DepartmentRepository extends JpaRepository<Department,String>{
   
}