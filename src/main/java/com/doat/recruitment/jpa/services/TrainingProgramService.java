package com.doat.recruitment.jpa.services;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.doat.recruitment.jpa.model.TrainingProgram;
import com.doat.recruitment.jpa.repository.TrainingProgramRepository;

@Service
@Transactional
public class TrainingProgramService {
	@Autowired
	TrainingProgramRepository repo;

	public List<TrainingProgram> viewTraining() {
		List<TrainingProgram> list=new ArrayList<>();
		repo.findAll().forEach(list::add);
		return list;
	}

	public void saveTraining(TrainingProgram trainingProgram) {
		
		repo.save(trainingProgram);
		
	}

	public List<TrainingProgram> viewNoticeTraining() {
		List<TrainingProgram> list=new ArrayList<>();
		 repo.findBydisplay_status().forEach(list::add);
		 return list;
	}

	public void deleteTraining(String training_prg_id) {
		repo.deleteById(training_prg_id);
	}

	public List<TrainingProgram> viewTestTraining(String month) {
		List<TrainingProgram> list=new ArrayList<>();
		repo.findTrainings(month).forEach(list::add);
		return list;
	}

	public Long countAll() {
		return repo.count();
	}


	

}
