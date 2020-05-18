package com.doat.recruitment.jpa.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import com.doat.recruitment.jpa.model.TraineeEmployee;

public interface TraineeEmployeeRepository extends JpaRepository<TraineeEmployee, String> {
    
    // @Query("SELECT new com.doat.recruitment.jpa.dto.DTOselectedEmployee(te.trainee_name,te.designation,te.ddo_code,te.employee.id, tp.training_prg_name) "
	// 		+ "FROM TrainingEmployee te INNER JOIN TrainingProgram tp ON te.training_program_id=tp.training_prg_idclear")
	// 		List<DTOselectedEmployee> fetchEmpTrainingDataInnerJoin();		


}
