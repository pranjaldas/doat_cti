package com.doat.recruitment.jpa.repository;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;


import com.doat.recruitment.jpa.model.TrainingProgram;
public interface TrainingProgramRepository extends JpaRepository<TrainingProgram, String> {
	
	@Query("from TrainingProgram where display_status=true")
	List<TrainingProgram> findBydisplay_status();

	

}
