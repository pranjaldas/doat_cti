package com.doat.recruitment.jpa.repository;

import com.doat.recruitment.jpa.model.Trainer;

import org.springframework.data.jpa.repository.JpaRepository;

public interface TrainerRepository extends JpaRepository<Trainer,String> {
    
}