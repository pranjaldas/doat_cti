package com.doat.recruitment.jpa.services;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import com.doat.recruitment.jpa.model.Employee;
import com.doat.recruitment.jpa.repository.EmployeeRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
@Service
public class EmployeeService {
 @Autowired
 EmployeeRepository rEmployeeRepository;
public List<Employee> findAllEmployees() {
    List<Employee> list=new ArrayList<>();
    rEmployeeRepository.findAll().forEach(list::add);
	return list;
}
public boolean checkIfExist(String employee_id) {
    boolean res=rEmployeeRepository.findById(employee_id).isPresent();
	return res;
}
public Optional<Employee> findEmployee(String employee_no) {
	return rEmployeeRepository.findById(employee_no);
}
}