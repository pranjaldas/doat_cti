package com.doat.recruitment.jpa.repository;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.doat.recruitment.jpa.model.TrainingProgram;
public interface TrainingProgramRepository extends JpaRepository<TrainingProgram, String> {
	
	@Query("from TrainingProgram where display_status=true")
	List<TrainingProgram> findBydisplay_status();

	

	@Query(value = "SELECT * FROM training_program AS tp WHERE MONTH(tp.training_start_date) <= :month AND MONTH(tp.training_end_date) >= :month", nativeQuery = true)
	List<TrainingProgram> findTrainings(@Param("month") String month);
}
