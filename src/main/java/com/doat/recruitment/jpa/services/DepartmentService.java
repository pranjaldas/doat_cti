package com.doat.recruitment.jpa.services;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import com.doat.recruitment.jpa.model.Department;
import com.doat.recruitment.jpa.repository.DepartmentRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
@Service
public class DepartmentService {
    @Autowired
    DepartmentRepository repo;
	public Object findAllDepartment() {
        List<Department> list=new ArrayList<>();
        //This is called method referencing as like call by method, introduced in java Stream Api at java 1.8
        //Internal Iteration
        repo.findAll().forEach(list::add);
        return list;
	}
	public Optional<Department> findDepartment(String department_id) {
       return repo.findById(department_id);
        
	}   
}