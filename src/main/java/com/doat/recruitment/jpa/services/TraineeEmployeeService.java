package com.doat.recruitment.jpa.services;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.doat.recruitment.jpa.repository.TraineeEmployeeRepository;
import com.doat.recruitment.jpa.model.TraineeEmployee;;

@Service
@Transactional
public class TraineeEmployeeService {
	@Autowired
	TraineeEmployeeRepository repo;
	

	public List<TraineeEmployee> viewSelectedTrainee() {
		List<TraineeEmployee> list=new ArrayList<>();
		repo.findAll().forEach(list::add);
		return list;
	}


	// public List<DTOselectedEmployee> fetchJoinData() {
	// 	List<DTOselectedEmployee> list=new ArrayList<>();
	// 	repo.fetchEmpTrainingDataInnerJoin().forEach(list::add);
	// 	return list;
	// }

}
