package com.doat.recruitment.jpa.services;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.doat.recruitment.jpa.model.TrainingApplication;
import com.doat.recruitment.jpa.repository.ApplicationRepository;

@Service
public class ApplicationService {
	@Autowired
	ApplicationRepository repo;
	
	public void saveApplication(TrainingApplication application) {
		repo.save(application);
		
	}
	

	public List<TrainingApplication> viewApplications() {
		List<TrainingApplication> list=new ArrayList<>();
		repo.findAll().forEach(list::add);
		return list;
	}

	public List<TrainingApplication> selectedPublishApplications() {
		List<TrainingApplication> list=new ArrayList<>();
		repo.findByApplication_statusAndPublished().forEach(list::add);
		return list;
	}

	public List<TrainingApplication> selectedApplications() {
		List<TrainingApplication> list=new ArrayList<>();
		repo.findByApplication_status().forEach(list::add);
		return list;
	}

	
}
