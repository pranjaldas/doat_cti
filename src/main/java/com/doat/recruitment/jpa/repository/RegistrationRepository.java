package com.doat.recruitment.jpa.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.doat.recruitment.jpa.model.Registration;

public interface RegistrationRepository extends JpaRepository<Registration, String> {

}
