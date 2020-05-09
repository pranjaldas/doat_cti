package com.doat.recruitment.jpa.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

import com.doat.recruitment.jpa.model.TrainingApplication;

public interface ApplicationRepository extends JpaRepository<TrainingApplication,Integer> {
    @Query("from TrainingApplication where application_status='accepted' AND publish=true")
    List<TrainingApplication> findByApplication_statusAndPublished();
    
    @Query("from TrainingApplication where application_status='accepted'")
	List<TrainingApplication> findByApplication_status();
}
