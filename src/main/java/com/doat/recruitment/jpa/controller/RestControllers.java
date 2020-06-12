package com.doat.recruitment.jpa.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.doat.recruitment.jpa.dto.ApplicationDTO;
import com.doat.recruitment.jpa.dto.ProfileDTO;
import com.doat.recruitment.jpa.model.Department;
import com.doat.recruitment.jpa.model.Employee;
import com.doat.recruitment.jpa.model.Events;
import com.doat.recruitment.jpa.model.Registration;
import com.doat.recruitment.jpa.model.TraineeEmployee;
import com.doat.recruitment.jpa.model.Trainer;
import com.doat.recruitment.jpa.model.TrainingApplication;
import com.doat.recruitment.jpa.model.TrainingProgram;
import com.doat.recruitment.jpa.model.User;
import com.doat.recruitment.jpa.response.ServiceResponse;
import com.doat.recruitment.jpa.services.ApplicationService;
import com.doat.recruitment.jpa.services.DepartmentService;
import com.doat.recruitment.jpa.services.EmployeeService;
import com.doat.recruitment.jpa.services.EventsService;
import com.doat.recruitment.jpa.services.IdGenerator;
import com.doat.recruitment.jpa.services.LoginService;
import com.doat.recruitment.jpa.services.MailService;
import com.doat.recruitment.jpa.services.RegistrationService;
import com.doat.recruitment.jpa.services.TraineeEmployeeService;
import com.doat.recruitment.jpa.services.TrainerService;
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
	@Autowired
	MailService MailService;
	@Autowired 
	LoginService loginService;
	@PostMapping(value = "/test")
	public String checkDept(@RequestBody Registration registration){
		Optional <Department> optional=deptService.findDepartment(registration.getDepartment_no());
		Optional<Employee> optional1=eEmployeeService.findEmployee(registration.getEmployee_no());
		
		if(optional.isPresent() && optional1.isPresent()){
			Department department=optional.get();
			Employee employee=optional1.get();
			ProfileDTO profile=new ProfileDTO(registration,employee,department);
			return profile.toString();
		}
		else{
			return null;
		}
		
	}
	@PostMapping(value = "/login")
	public ResponseEntity<Object> checkLogin(@RequestBody final User user){
		System.out.println(user);
		final boolean auth=loginService.authUser(user);
		if(auth==true){
			final Registration registration=registrationService.findRegistration(user.getUsername());
			Optional <Department> optional=deptService.findDepartment(registration.getDepartment_no());
			Optional<Employee> optional1=eEmployeeService.findEmployee(registration.getEmployee_no());
			Department department=optional.get();
			Employee employee=optional1.get();
			ProfileDTO profile=new ProfileDTO(registration,employee,department);
			final ServiceResponse<ProfileDTO> response=new ServiceResponse<>("success",profile);
			return new ResponseEntity<>(response,HttpStatus.OK);
		}
		final ServiceResponse<String> response=new ServiceResponse<>("failure","not found");
		return new ResponseEntity<>(response,HttpStatus.OK);
	}


	// Registration Controllers
	@PostMapping(value = "/postRegistration")
	public ResponseEntity<Object> postRegistration(@RequestBody final Registration registration) {
		
		final Registration reg=registrationService.findRegistration(registration.getEmail());
		if(reg==null){
			try {
				MailService.sendMail(registration);
				final User user=new User(registration);	

				String id=IdGenerator.generate(getTime(), registration.getName(), registration.getEmployee_no(), registration.getEmail(), registration.getPhone());
				registration.setReg_id(id);

				loginService.saveLogin(user);
				registrationService.saveRegistration(registration);

				final ServiceResponse<Registration> response = new ServiceResponse<>("success", registration);
				return new ResponseEntity<Object>(response, HttpStatus.OK);	
			} 
			catch (final Exception e) {
				System.out.println("The error is "+e);
			}
	
			final ServiceResponse<Registration> response = new ServiceResponse<>("emailNotSendfailure", registration);
			return new ResponseEntity<Object>(response, HttpStatus.OK);

		}
		else{
			final ServiceResponse<Registration> response = new ServiceResponse<>("usedEmailfailure", registration);
			return new ResponseEntity<Object>(response, HttpStatus.OK);


		}
			
		
	}
	public String getTime(){
		long time=System.currentTimeMillis();
        String timee=Long.toString(time);
        StringBuilder input=new StringBuilder(timee);
		String timeee=input.toString();
		return timeee;
	}

	@GetMapping("/countRegistration")
	public ResponseEntity<Object> countRegistration(){
		final ServiceResponse<Long> response=new ServiceResponse<>("success",registrationService.countTotal());
		return new ResponseEntity<>(response,HttpStatus.OK);
	}


	// To get all the selected employees_trainee in the website
	@GetMapping(value = "/selectedTrainee")
	public ResponseEntity<Object> getSelectedTrainee() {
		final List<TraineeEmployee> list = traineeEmployeeService.viewSelectedTrainee();
		final ServiceResponse<List<TraineeEmployee>> response = new ServiceResponse<>("success", list);
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
	@GetMapping(value="/testNative/{month}")
	public ResponseEntity<Object> getTestTrainingPrograms(@PathVariable String month) {
		final List<TrainingProgram> list = trainingProgramService.viewTestTraining(month);
		final ServiceResponse<List<TrainingProgram>> response = new ServiceResponse<>("success", list);
		return new ResponseEntity<Object>(response, HttpStatus.OK);
	}
	@GetMapping(value = "/trainings")
	public ResponseEntity<Object> getTrainingPrograms() {
		final List<TrainingProgram> list = trainingProgramService.viewTraining();
		final ServiceResponse<List<TrainingProgram>> response = new ServiceResponse<>("success", list);
		return new ResponseEntity<Object>(response, HttpStatus.OK);
	}
	@DeleteMapping(value="/deleteTraining/{training_prg_id}")
	public ResponseEntity<Object> deleteCompany(@PathVariable final String training_prg_id) {
		try {
			trainingProgramService.deleteTraining(training_prg_id);
			final ServiceResponse<String> response=new ServiceResponse<>("success",training_prg_id);
			return new ResponseEntity<Object>(response,HttpStatus.OK);
		} catch (final Exception e) {
			e.printStackTrace();
		}
		final ServiceResponse<String> response=new ServiceResponse<>("conflict",training_prg_id);
		return new ResponseEntity<Object>(response,HttpStatus.OK);
	}


	// To get flagged training notification
	@GetMapping(value = "/trainingsStatus")
	public ResponseEntity<Object> getTraining() {
		final List<TrainingProgram> list = trainingProgramService.viewNoticeTraining();
		final ServiceResponse<List<TrainingProgram>> response = new ServiceResponse<>("success", list);
		return new ResponseEntity<Object>(response, HttpStatus.OK);
	}
	// To post new training

	@PostMapping(value = "/postTrainings")
	public ResponseEntity<Object> saveDetails(@RequestBody final TrainingProgram trainingProgram) throws ParseException {
		final Calendar cal = Calendar.getInstance();
        final SimpleDateFormat sdf = new SimpleDateFormat("HHmmss");
		final String time = sdf.format(cal.getTime());
		

		final SimpleDateFormat dateFormat = new SimpleDateFormat("ddMMyyyy");
        final Date startdate = trainingProgram.getTraining_start_date();
		final String date = dateFormat.format(startdate).replaceAll("\\s", "");
		final String id=IdGenerator.generate(time,trainingProgram.getTraining_prg_type(),date, trainingProgram.getTraining_prg_name(),"TRAIN");
	
		System.out.println("The generated Id is:"+id);
		Events event=new Events(trainingProgram);
		eventService.saveEvent(event);

		trainingProgram.setTraining_prg_id(id);
        trainingProgramService.saveTraining(trainingProgram);
        final ServiceResponse<TrainingProgram> response = new ServiceResponse<>("success", trainingProgram);
        return new ResponseEntity<Object>(response, HttpStatus.OK);
	}
	@GetMapping(value = "admin/totalTrainings")
	public ResponseEntity<Object> countTrainings(){
		ServiceResponse<Long> response=new ServiceResponse<Long>("success", trainingProgramService.countAll());
		return new ResponseEntity<>(response,HttpStatus.OK);
	}


	
	//Employee rest apis
	@GetMapping("/employees")
	public ResponseEntity<Object> getEmployees(){
		final ServiceResponse<List<Employee>> response=new ServiceResponse<>("success",eEmployeeService.findAllEmployees());
		return new ResponseEntity<Object>(response,HttpStatus.OK);
	}
	
	@PostMapping("/testEmployee")
	public String checkEmployee(@RequestBody final Employee employee){
		System.out.println(employee.toString());
		final boolean res=eEmployeeService.checkIfExist(employee.getEmployee_id());
		if(res==true){
			return "found";
		}
		return "not Found";

	}
	//Training Applications
	@PostMapping(value="/apply")
	public ResponseEntity<Object> apply(@RequestBody ApplicationDTO application){
		ServiceResponse<ApplicationDTO> response=new ServiceResponse<>("success",application);
		return new ResponseEntity<>(response,HttpStatus.OK);
	}
	@PostMapping(value="/applyTraining")
	public ResponseEntity<Object> applyTraining(@RequestBody ApplicationDTO application){
		User user=new User(application);
		final boolean auth=loginService.authUser(user);
		if(auth==true){
			Optional <Registration> optional=registrationService.findRegistrationById(application.getReg_id());
			if(optional.isPresent()){
				Registration registration=optional.get();
				Optional<Employee> optional2=eEmployeeService.findEmployee(registration.getEmployee_no());
				if(optional2.isPresent()){
				  Employee employee=optional2.get();
				  TrainingApplication trainingApplication=new TrainingApplication(registration, application, employee);
				  service.saveApplication(trainingApplication);
				  final ServiceResponse<TrainingApplication> response=new ServiceResponse<>("success",trainingApplication);
				return new ResponseEntity<>(response,HttpStatus.OK);
				}
				final ServiceResponse<String> response=new ServiceResponse<>("Not Found","Employee Not Found");
				return new ResponseEntity<>(response,HttpStatus.OK);
			}			
			final ServiceResponse<String> response=new ServiceResponse<>("Not Found","Registration Not Found");
			return new ResponseEntity<>(response,HttpStatus.OK);
		}
		ServiceResponse<String> response=new ServiceResponse<>("Wrong Input","Not a valid user");
		return new ResponseEntity<>(response,HttpStatus.OK);
	}
	

	//this api is for updating publish attribute
	@PostMapping(value = "/postApplication")
	public ResponseEntity<Object> postApplication(@RequestBody final TrainingApplication application) {
		service.saveApplication(application);
		final ServiceResponse<TrainingApplication> response = new ServiceResponse<>("success", application);

		return new ResponseEntity<Object>(response, HttpStatus.OK);
	}
	@PostMapping(value = "/checkApplication")
	public ResponseEntity<Object> checkApplication(@RequestBody final TrainingApplication application) {
		System.out.println(application);
		final String empNo=application.getEmployee_no();
		System.out.println("Employee Number is "+empNo);
		final boolean res=eEmployeeService.checkIfExist(empNo);
		if(res==true){
			service.saveApplication(application);
			final ServiceResponse<TrainingApplication> response = new ServiceResponse<>("success", application);
			return new ResponseEntity<Object>(response, HttpStatus.OK);
		}
		final ServiceResponse<TrainingApplication> response = new ServiceResponse<>("failure", application);
		return new ResponseEntity<Object>(response, HttpStatus.OK);

	}
	@DeleteMapping(value = "/admin/deleteApplication/{application_id}")
	public ResponseEntity<Object> deletApplication(@PathVariable Integer application_id){
		try {
			service.deleteTrainingApplication(application_id);
			final ServiceResponse<String> response = new ServiceResponse<>("success", "Deleted Successfully");
			return new ResponseEntity<Object>(response, HttpStatus.OK);
			
		} catch (Exception e) {
			System.out.println(e);
		}
		final ServiceResponse<String> response = new ServiceResponse<>("failure", "Unable to delete");
		return new ResponseEntity<Object>(response, HttpStatus.OK);
	}
	@GetMapping(value = "/admin/findApplication/{application_id}")
	public ResponseEntity<Object> findApplication(@PathVariable Integer application_id){
		
		Optional<TrainingApplication> optional=service.findApplication(application_id);
		if(optional.isPresent()){
			TrainingApplication application=optional.get();
			final ServiceResponse<TrainingApplication> response = new ServiceResponse<>("success", application);
			return new ResponseEntity<Object>(response, HttpStatus.OK);
		}
		final ServiceResponse<String> response = new ServiceResponse<>("failure", "Not Found");
		return new ResponseEntity<Object>(response, HttpStatus.OK);
	}






	@GetMapping(value = "/getApplications")
	public ResponseEntity<Object> getApplication() {
		final ServiceResponse<List<TrainingApplication>> response=new ServiceResponse<>("success",service.viewApplications());
		return new ResponseEntity<Object>(response,HttpStatus.OK);
	}
	@GetMapping(value="/selectedPublishApplications")
	public ResponseEntity<Object> getSelectedApplication() {
		final ServiceResponse<List<TrainingApplication>> response=new ServiceResponse<>("success",service.selectedPublishApplications());
		return new ResponseEntity<Object>(response,HttpStatus.OK);
	}
	@GetMapping(value="/selectedApplications")
	public ResponseEntity<Object> getSelectedUnpublishApplication() {
		final ServiceResponse<List<TrainingApplication>> response=new ServiceResponse<>("success",service.selectedApplications());
		return new ResponseEntity<Object>(response,HttpStatus.OK);
	}
	


	//Department Api's
	@Autowired
	DepartmentService deptService;
	@GetMapping(value = "/getDept")
	public ResponseEntity<Object> getDepts() {
		final ServiceResponse<List<Department>> response=new ServiceResponse<>("success", (List<Department>) deptService.findAllDepartment());
		return new ResponseEntity<Object>(response,HttpStatus.OK);
	}

	//Events API's
	@Autowired
	EventsService eventService;
	@GetMapping(value="/getEvents")
	public ResponseEntity<Object> getAllEvents(){
		final ServiceResponse<List<Events>> response=new ServiceResponse<List<Events>>("success", eventService.findAllEvents());
		return new ResponseEntity<>(response,HttpStatus.OK);
	}
	
	@PostMapping(value="/postEvent")
	public ResponseEntity<Object> postMapping(@RequestBody final Events event){
		eventService.saveEvent(event);
		final ServiceResponse<Events> response=new ServiceResponse<>("success",event);
		return new ResponseEntity<Object>(response,HttpStatus.OK);
	}	
	//Trainer APIs
	@Autowired
	TrainerService trainerService;
	@GetMapping(value="/admin/trainers")
	public ResponseEntity<Object> alltrainers(){
		ServiceResponse<List<Trainer>> response=new ServiceResponse<>("success",trainerService.findAllTrainers());
		return new ResponseEntity<Object>(response,HttpStatus.OK);
	}
}
