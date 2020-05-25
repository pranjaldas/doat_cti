package com.doat.recruitment.jpa.services;

 
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.doat.recruitment.jpa.model.Registration;
import com.doat.recruitment.jpa.repository.RegistrationRepository;

@Service
public class RegistrationService {
	@Autowired
	RegistrationRepository repo;
	
	public void saveRegistration(Registration registration) {
		repo.save(registration);
	}

	public Long countTotal() {

		return repo.count();
	}
	

	public Registration findRegistration(String email) {
		return repo.findByEmail(email);
	}

}
