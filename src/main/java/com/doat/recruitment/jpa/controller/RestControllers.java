package com.doat.recruitment.jpa.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.doat.recruitment.jpa.model.Employee;
import com.doat.recruitment.jpa.model.Registration;
import com.doat.recruitment.jpa.model.TraineeEmployee;
import com.doat.recruitment.jpa.model.TrainingApplication;
import com.doat.recruitment.jpa.model.TrainingProgram;
import com.doat.recruitment.jpa.response.ServiceResponse;
import com.doat.recruitment.jpa.services.ApplicationService;
import com.doat.recruitment.jpa.services.EmployeeService;
import com.doat.recruitment.jpa.services.IdGenerator;
import com.doat.recruitment.jpa.services.RegistrationService;
import com.doat.recruitment.jpa.services.TraineeEmployeeService;
import com.doat.recruitment.jpa.services.TrainingProgramService;

@RestController
public class RestControllers {
	@Autowired
	ApplicationService service;
	@Autowired
	RegistrationService registrationService;
	@Autowired
	TraineeEmployeeService traineeEmployeeService;
	@Autowired
	TrainingProgramService trainingProgramService;
	@Autowired
	EmployeeService eEmployeeService;
	

	// Registration Controllers
	@PostMapping(value = "/postRegistration")
	public ResponseEntity<Object> postRegistration(@RequestBody Registration registration) {

		registrationService.saveRegistration(registration);
		ServiceResponse<Registration> response = new ServiceResponse<>("success", registration);

		return new ResponseEntity<Object>(response, HttpStatus.OK);
	}

	// To get all the selected employees_trainee in the website
	@GetMapping(value = "/selectedTrainee")
	public ResponseEntity<Object> getSelectedTrainee() {
		List<TraineeEmployee> list = traineeEmployeeService.viewSelectedTrainee();
		ServiceResponse<List<TraineeEmployee>> response = new ServiceResponse<>("success", list);
		return new ResponseEntity<Object>(response, HttpStatus.OK);
	}

	// For testing Join
	// @GetMapping(value="/selectedTrainees")
	// public ResponseEntity<Object> getSelectedTrainees() {
	// List<DTOselectedEmployee> list= traineeEmployeeService.fetchJoinData();
	// ServiceResponse<List<DTOselectedEmployee>> response=new
	// ServiceResponse<>("success",list);
	// return new ResponseEntity<Object>(response,HttpStatus.OK);
	// }
	// To advertise a upcomming training program
	@GetMapping(value = "/trainings")
	public ResponseEntity<Object> getTrainingPrograms() {
		List<TrainingProgram> list = trainingProgramService.viewTraining();
		ServiceResponse<List<TrainingProgram>> response = new ServiceResponse<>("success", list);
		return new ResponseEntity<Object>(response, HttpStatus.OK);
	}

	// To get flagged training notification
	@GetMapping(value = "/trainingsStatus")
	public ResponseEntity<Object> getTraining() {
		List<TrainingProgram> list = trainingProgramService.viewNoticeTraining();
		ServiceResponse<List<TrainingProgram>> response = new ServiceResponse<>("success", list);
		return new ResponseEntity<Object>(response, HttpStatus.OK);
	}
	// To post new training

	@PostMapping(value = "/postTrainings")
	public ResponseEntity<Object> saveDetails(@RequestBody TrainingProgram trainingProgram) throws ParseException {
		Calendar cal = Calendar.getInstance();
        SimpleDateFormat sdf = new SimpleDateFormat("HHmmss");
		String time = sdf.format(cal.getTime());
		

		SimpleDateFormat dateFormat = new SimpleDateFormat("ddMMyyyy");
        Date startdate = trainingProgram.getTraining_start_date();
		String date = dateFormat.format(startdate).replaceAll("\\s", "");
		
		
		

        IdGenerator generator=new IdGenerator();
		String id=generator.IdGenerate(time,trainingProgram.getTraining_prg_type(),date, trainingProgram.getTraining_prg_name(),"TRAIN");
		System.out.println("The generated Id is:"+id);

		trainingProgram.setTraining_prg_id(id);
        trainingProgramService.saveTraining(trainingProgram);
        ServiceResponse<TrainingProgram> response = new ServiceResponse<>("success", trainingProgram);
        return new ResponseEntity<Object>(response, HttpStatus.OK);
	}
	
	//Employee rest apis
	@GetMapping("/employees")
	public ResponseEntity<Object> getEmployees(){
		ServiceResponse<List<Employee>> response=new ServiceResponse<>("success",eEmployeeService.findAllEmployees());
		return new ResponseEntity<Object>(response,HttpStatus.OK);
	}
	@PostMapping("/testEmployee")
	public String checkEmployee(@RequestBody Employee employee){
		System.out.println(employee.toString());
		boolean res=eEmployeeService.checkIfExist(employee.getEmployee_id());
		if(res==true){
			return "found";
		}
		return "not Found";

	}
	//Training Applications
	//this api is for updating publish attribute
	@PostMapping(value = "/postApplication")
	public ResponseEntity<Object> postApplication(@RequestBody TrainingApplication application) {
		service.saveApplication(application);
		ServiceResponse<TrainingApplication> response = new ServiceResponse<>("success", application);

		return new ResponseEntity<Object>(response, HttpStatus.OK);
	}
	@PostMapping(value = "/checkApplication")
	public String checkApplication(@RequestBody TrainingApplication application) {
		System.out.println(application);
		String empNo=application.getEmployee_no();
		System.out.println("Employee Number is "+empNo);
		boolean res=eEmployeeService.checkIfExist(empNo);
		if(res==true){
			return "found";
		}
		return "not Found";

	}

	@GetMapping(value = "/getApplications")
	public ResponseEntity<Object> getApplication() {
		ServiceResponse<List<TrainingApplication>> response=new ServiceResponse<>("success",service.viewApplications());
		return new ResponseEntity<Object>(response,HttpStatus.OK);
	}
	@GetMapping(value="/selectedPublishApplications")
	public ResponseEntity<Object> getSelectedApplication() {
		ServiceResponse<List<TrainingApplication>> response=new ServiceResponse<>("success",service.selectedPublishApplications());
		return new ResponseEntity<Object>(response,HttpStatus.OK);
	}
	@GetMapping(value="/selectedApplications")
	public ResponseEntity<Object> getSelectedUnpublishApplication() {
		ServiceResponse<List<TrainingApplication>> response=new ServiceResponse<>("success",service.selectedApplications());
		return new ResponseEntity<Object>(response,HttpStatus.OK);
	}
	
	
}
