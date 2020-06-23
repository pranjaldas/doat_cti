package com.doat.recruitment.jpa.repository;


import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;
import java.util.Optional;

import com.doat.recruitment.jpa.model.TrainingApplication;

public interface ApplicationRepository extends JpaRepository<TrainingApplication,String> {
    @Query("from TrainingApplication where application_status='accepted' AND publish=true")
    List<TrainingApplication> findByApplication_statusAndPublished();
    
    @Query("from TrainingApplication where application_status='accepted'")
	List<TrainingApplication> findByApplication_status();

    @Query(value = "SELECT * FROM training_applications AS tp WHERE tp.reg_no=:reg_no AND tp.training_prog_id=:training_prg_id", nativeQuery = true)
    Optional<TrainingApplication> findByReg_no(@Param("reg_no") String reg_no,@Param("training_prg_id") String training_prg_id);
    
    @Query(value = "SELECT * FROM training_applications AS tp WHERE tp.reg_no=:reg_no", nativeQuery = true)
	List<TrainingApplication> findByReg(String reg_no);
}
