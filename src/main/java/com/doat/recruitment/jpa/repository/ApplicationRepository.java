package com.doat.recruitment.jpa.repository;


import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;
import java.util.Optional;

import com.doat.recruitment.jpa.model.TrainingApplication;

public interface ApplicationRepository extends JpaRepository<TrainingApplication,String> {
    @Query("from TrainingApplication where application_status='selected' AND publish=true")
    List<TrainingApplication> findByApplication_statusAndPublished();
    //HQL
    @Query("from TrainingApplication where application_status='accepted'")
	List<TrainingApplication> findByApplication_status();
    //SQL
    @Query(value = "SELECT * FROM training_applications AS tp WHERE tp.reg_no=:reg_no AND tp.training_prog_id=:training_prg_id", nativeQuery = true)
    Optional<TrainingApplication> findByReg_no(@Param("reg_no") String reg_no,@Param("training_prg_id") String training_prg_id);
    //SQL
    @Query(value = "SELECT * FROM training_applications AS tp WHERE tp.reg_no=:reg_no", nativeQuery = true)
    List<TrainingApplication> findByReg(String reg_no);
    //HQL
    @Query("from TrainingApplication where application_status='pending'")
    List<TrainingApplication> findPendingApplications();
    //HQL
    @Query("from TrainingApplication where application_status='rejected'")
    List<TrainingApplication> findRejectedApplications();
    @Query(value="SELECT * FROM training_applications AS ta WHERE ta.application_status='accepted' OR ta.application_status='selected'", nativeQuery = true)
    List<TrainingApplication> findByAcceptedSelected();
    //HQL
    @Query("from TrainingApplication where application_status='selected'")
    List<TrainingApplication> findBySelcted();
    
    //To find objected application
    @Query(value="SELECT * FROM training_applications AS ta WHERE ta.training_prog_id=:seniorTrainingPrgId AND ta.employee_no=:employee_id",nativeQuery = true)
      Optional<TrainingApplication> findRaiseObjectionApplication(@Param ("employee_id") String employee_id,@Param ("seniorTrainingPrgId") String seniorTrainingPrgId);
    //To find objected application
    @Query(value="SELECT * FROM training_applications AS ta WHERE ta.application_id=:application_id AND ta.application_status='selected'",nativeQuery = true)
	Optional<TrainingApplication> findApplicationJuniorsSelected(@Param ("application_id") String application_id);
}
