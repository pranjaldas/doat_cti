package com.doat.recruitment.jpa.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
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
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.doat.recruitment.jpa.dto.ApplicationDTO;
import com.doat.recruitment.jpa.dto.CalenderDto;
import com.doat.recruitment.jpa.dto.EmployeeDTO;
import com.doat.recruitment.jpa.dto.ProfileDTO;
import com.doat.recruitment.jpa.dto.RegistrationUpdateDTO;
import com.doat.recruitment.jpa.model.Department;
import com.doat.recruitment.jpa.model.Employee;
import com.doat.recruitment.jpa.model.Events;
import com.doat.recruitment.jpa.model.MonthlyCalendar;
import com.doat.recruitment.jpa.model.Notification;
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
import com.doat.recruitment.jpa.services.MonthlyCalendarService;
import com.doat.recruitment.jpa.services.NotificationService;
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
	@Autowired
	NotificationService notificatioservice;
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
			ProfileDTO profile=new ProfileDTO(registration,employee,department,service.findAllappByRegId(registration.getReg_id()),notificatioservice.findAllByRegNo(registration.getReg_id()));
			
			//to find the no of unread msg
			profile.setUnread_msg(notificatioservice.countUserUnread(registration.getReg_id()));
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
				// MailService.sendMail(registration);
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
	@PutMapping(value = "user/updateRegistration/{reg_id}")
	public ResponseEntity<Object> updateRegistration(@PathVariable(value = "reg_id")String reg_id,@RequestBody RegistrationUpdateDTO registrationUpdateDTO){
		Optional<Registration> optional=registrationService.findRegistrationById(registrationUpdateDTO.getReg_id());
		if(optional.isPresent()){
			Registration registration=optional.get();
			System.out.println("Found registration is"+registration);
			registration.setPhone(registrationUpdateDTO.getPhone());
			try {
				registrationService.saveRegistration(registration);
				// User user=new User(registration,reg_id);
				// loginService.saveLogin(user);
				ServiceResponse<Registration> response=new ServiceResponse<>("success",registration);
				return new ResponseEntity<>(response,HttpStatus.OK);
				
			} catch (Exception e) {
				e.printStackTrace();
			}
			
			ServiceResponse<Registration> response=new ServiceResponse<>("failure",registration);
			return new ResponseEntity<>(response,HttpStatus.OK);
		}
		ServiceResponse<String> response=new ServiceResponse<>("Not Found","registration id not found");
		return new ResponseEntity<>(response,HttpStatus.OK);
		
		
		
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
		List<CalenderDto> calendarList=new ArrayList<>();
		for(TrainingProgram t:list){
			CalenderDto calendar=new CalenderDto(t);
			calendarList.add(calendar);

		}
		final ServiceResponse<List<CalenderDto>> response= new ServiceResponse<>("success", calendarList);
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

	@GetMapping(value = "/admin/getTraining/{training_prg_id}")
	public ResponseEntity<Object> getTheTraining(@PathVariable String training_prg_id){
		Optional<TrainingProgram> optional=trainingProgramService.findTheTraining(training_prg_id);
		if(optional.isPresent()){
			ServiceResponse<TrainingProgram> response=new ServiceResponse<>("success",optional.get());
			return new ResponseEntity<>(response,HttpStatus.OK);
		}
		ServiceResponse<String> response=new ServiceResponse<>("success",training_prg_id+" This training program is not found");
		return new ResponseEntity<>(response,HttpStatus.OK);
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
	//This api is for managername and department name
	@GetMapping(value="/allemployees")
	public ResponseEntity<Object> getAllEployees(){
		List<Employee> list=eEmployeeService.findAllEmployees();
		List<EmployeeDTO> finalList=new ArrayList<>();
		list.forEach((employee)->{
			String manager=eEmployeeService.findManager(employee.getManager());
			String department=deptService.findDepartmenName(employee.getDepartment_id());
			EmployeeDTO employeeDto=new EmployeeDTO(employee,department,manager);
			finalList.add(employeeDto);
		});

		final ServiceResponse<List<EmployeeDTO>> response=new ServiceResponse<>("success",finalList);
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
	//To apply training indide the login profile
	@PostMapping(value="/user/applyTraining")
	public ResponseEntity<Object> apply(@RequestBody TrainingApplication application){
		Optional<TrainingProgram> optional=trainingProgramService.findTheTraining(application.getTraining_prog_id());
		if(optional.isPresent()){
			Optional<TrainingApplication> optional1=service.findApplicationByregId(application.getReg_no(),application.getTraining_prog_id());
			if(optional1.isPresent()){
			ServiceResponse<String> response=new ServiceResponse<>("Overrite","Already applied");
			return new ResponseEntity<Object>(response,HttpStatus.OK);

			}else{
			String time=getTime();
			String id=IdGenerator.generateV2(time,application.getName());
			application.setApplication_id(id);
			service.saveApplication(application);
			ServiceResponse<TrainingApplication> response=new ServiceResponse<>("success",application);
			return new ResponseEntity<Object>(response,HttpStatus.OK);

			}

		}
		ServiceResponse<String> response=new ServiceResponse<>("failure","Not Found Training Program");
		return new ResponseEntity<Object>(response,HttpStatus.OK);
	}


	//To apply training from the advertisement so ApplicationDto class has used
	@PostMapping(value="/applyTraining")
	public ResponseEntity<Object> applyTraining(@RequestBody ApplicationDTO application){
		System.out.println("Application details"+application.toString());
		Optional<TrainingApplication> optional1=service.findApplicationByregId(application.getReg_id(),application.getTraining_prg_id());
		if(optional1.isPresent()){
			ServiceResponse<String> response=new ServiceResponse<>("Overrite","Already applied");
			return new ResponseEntity<>(response,HttpStatus.OK);

		}
		else{
		User user=new User(application);
		System.out.println("User Details"+user.toString());
		final boolean auth=loginService.authUser(user);
		if(auth==true){
			Optional <Registration> optional=registrationService.findRegistrationById(application.getReg_id());
			if(optional.isPresent()){
				Registration registration=optional.get();
				Optional<Employee> optional2=eEmployeeService.findEmployee(registration.getEmployee_no());
				if(optional2.isPresent()){
				  Employee employee=optional2.get();
				  TrainingApplication trainingApplication=new TrainingApplication(registration, application, employee);
				  	String time=getTime();
					String id=IdGenerator.generateV2(time,trainingApplication.getName());
					trainingApplication.setApplication_id(id);
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





		
	}
	

	//this api is for updating publish attribute
	@PostMapping(value = "/postApplication")
	public ResponseEntity<Object> postApplication(@RequestBody final TrainingApplication application) {
		String time=getTime();
		String id=IdGenerator.generateV2(time, application.getName());
		application.setApplication_id(id);
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
			String time=getTime();
			String id=IdGenerator.generateV2(time, application.getName());
			application.setApplication_id(id);
			service.saveApplication(application);
			final ServiceResponse<TrainingApplication> response = new ServiceResponse<>("success", application);
			return new ResponseEntity<Object>(response, HttpStatus.OK);
		}
		final ServiceResponse<TrainingApplication> response = new ServiceResponse<>("failure", application);
		return new ResponseEntity<Object>(response, HttpStatus.OK);

	}
	@DeleteMapping(value = "/admin/deleteApplication/{application_id}")
	public ResponseEntity<Object> deletApplication(@PathVariable String application_id){
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
	//Find Application by application Id
	//With detailed transient attributes
	@GetMapping(value = "/admin/findApplication/{application_id}")
	public ResponseEntity<Object> findApplication(@PathVariable String application_id){
		
		Optional<TrainingApplication> optional=service.findApplication(application_id);
		if(optional.isPresent()){
			TrainingApplication application=optional.get();
			Optional<Employee> optional2=eEmployeeService.findEmployee(application.getEmployee_no());
			if(optional2.isPresent()){
				Employee employee=optional2.get();
				application.setManager(employee.getManager());
				application.setJoin_date(employee.getEmployee_join_date());
				application.setRetire_date(employee.getEmployee_retire_date());
				final ServiceResponse<TrainingApplication> response = new ServiceResponse<>("success", application);
				return new ResponseEntity<Object>(response, HttpStatus.OK);
			}
			final ServiceResponse<String> response = new ServiceResponse<>("failure", "Emp Id not found");
			return new ResponseEntity<Object>(response, HttpStatus.OK);
	
		}
		final ServiceResponse<String> response = new ServiceResponse<>("failure", "Application Not Found");
		return new ResponseEntity<Object>(response, HttpStatus.OK);
	}
	@GetMapping(value = "/admin/findApplicationsByregID/{reg_no}")
	public ResponseEntity<Object> findApplicationByregId(@PathVariable String reg_no){	
		final ServiceResponse<List<TrainingApplication>> response = new ServiceResponse<>("success", service.findAllappByRegId(reg_no));
		return new ResponseEntity<Object>(response, HttpStatus.OK);
	}
	@PostMapping(value="/admin/rejectSelectedOrAcceptedApplication")
	public ResponseEntity<Object> rejectAcceptedOrSelectedApplication(@RequestBody TrainingApplication application){
		if(application.getReg_no()!="Unregistered"){
			application.setApplication_status("rejected");
			service.saveApplication(application);
			//to send notification to registerd candidates
			Notification notification=new Notification();
			notification.setSender_read(true);
			notification.setTitle("Regarding Your Application No:"+application.getApplication_id());
			notification.setSubject("Mr."+application.getName()+"We are very sorry to say that your Application bearing Application no: "+application.getApplication_id()+" has rejected due to the following reasons:"+"\n"+application.getReason()+"\n"+"Better luck next time, any Further information will be notified soon.");
			notification.setRecipient_read(false);
			notification.setRecipient_name(application.getName());
			notification.setMail(false);
			notification.setRecipient_reg_id(application.getReg_no());
			notification.setSender_name("ADMIN");
			notification.setSender_reg_id("ADMINREG001");
			notification.setApplication_id(application.getApplication_id());
			notificatioservice.saveNoti(notification);
			final ServiceResponse<String> response=new ServiceResponse<>("success","updated successfully");
			return new ResponseEntity<Object>(response,HttpStatus.OK);	
		}
		application.setApplication_status("selected");
		service.saveApplication(application);
		final ServiceResponse<String> response=new ServiceResponse<>("success","updated successfully");
		return new ResponseEntity<Object>(response,HttpStatus.OK);	
		
	}
	@PostMapping(value="/admin/selectAcceptedApplication")
	public ResponseEntity<Object> selectAcceptedApplication(@RequestBody TrainingApplication application){
		if(application.getReg_no()!="Unregistered"){
			application.setApplication_status("selected");
			service.saveApplication(application);
			//to send notification to registerd candidates
			Notification notification=new Notification();
			notification.setSender_read(true);
			notification.setTitle("Regarding Your Application No:"+application.getApplication_id());
			notification.setSubject("Congratulations "+application.getName()+" your applications has selected, Very soon final list will be published in CTI website.");
			notification.setRecipient_read(false);
			notification.setRecipient_name(application.getName());
			notification.setMail(false);
			notification.setRecipient_reg_id(application.getReg_no());
			notification.setSender_name("ADMIN");
			notification.setSender_reg_id("ADMINREG001");
			notification.setApplication_id(application.getApplication_id());
			notificatioservice.saveNoti(notification);
			final ServiceResponse<String> response=new ServiceResponse<>("success","updated successfully");
			return new ResponseEntity<Object>(response,HttpStatus.OK);	
		}
		application.setApplication_status("selected");
		service.saveApplication(application);
		final ServiceResponse<String> response=new ServiceResponse<>("success","updated successfully");
		return new ResponseEntity<Object>(response,HttpStatus.OK);	
		
	}
	//For Registered pending applications in import application section
	@GetMapping(value="/admin/getPendingApplications")
	public ResponseEntity<Object> getPendingApplications(){
		final ServiceResponse<List<TrainingApplication>> response=new ServiceResponse<>("success",service.findPending());
		return new ResponseEntity<Object>(response,HttpStatus.OK);	
	}
	//To accepted a pending application
	@GetMapping(value="/admin/acceptPendingApplication/{application_id}")
	public ResponseEntity<Object> acceptPendingApplications(@PathVariable String application_id){
		Optional<TrainingApplication> optional=service.findApplication(application_id);
		if(optional.isPresent()){
			TrainingApplication application=optional.get();
			application.setApplication_status("accepted");
			service.saveApplication(application);
			Notification notification=new Notification();
			notification.setSender_read(true);
			notification.setTitle("Regarding Your Application No:"+application.getApplication_id());
			notification.setSubject("Congratulations "+application.getName()+" your applications has accepted, Further information will be notified soon");
			notification.setRecipient_read(false);
			notification.setRecipient_name(application.getName());
			notification.setMail(false);
			notification.setRecipient_reg_id(application.getReg_no());
			notification.setSender_name("ADMIN");
			notification.setSender_reg_id("ADMINREG001");
			notification.setApplication_id(application_id);
			notificatioservice.saveNoti(notification);
			final ServiceResponse<String> response=new ServiceResponse<>("success","Successfully updated");
			return new ResponseEntity<Object>(response,HttpStatus.OK);
		}
		final ServiceResponse<String> response=new ServiceResponse<>("failure","Application not present");
		return new ResponseEntity<Object>(response,HttpStatus.OK);	
	}
	//To update pending applications
	@PostMapping(value="/admin/updatePendingApplication")
	public ResponseEntity<Object> rejectPendingApplications(@RequestBody TrainingApplication application_send){
		System.out.println(application_send.toString());
		Optional<TrainingApplication> optional=service.findApplication(application_send.getApplication_id());
		if(optional.isPresent()){
			TrainingApplication application=optional.get();
		if(application_send.isPassCriteria()==true){
			application.setApplication_status("accepted");
			service.saveApplication(application);
			Notification notification=new Notification();
			notification.setSender_read(true);
			notification.setTitle("Regarding Your Application No:"+application.getApplication_id());
			notification.setSubject("Congratulations "+application.getName()+" your applications has accepted, Further information will be notified soon");
			notification.setRecipient_read(false);
			notification.setRecipient_name(application.getName());
			notification.setMail(false);
			notification.setRecipient_reg_id(application.getReg_no());
			notification.setSender_name("ADMIN");
			notification.setSender_reg_id("ADMINREG001");
			notification.setApplication_id(application.getApplication_id());
			notificatioservice.saveNoti(notification);
			final ServiceResponse<String> response=new ServiceResponse<>("success","Successfully updated");
			return new ResponseEntity<Object>(response,HttpStatus.OK);
		}
		else{
			application.setApplication_status("rejected");
			application.setReason(application_send.getReason());
			service.saveApplication(application);
			Notification notification=new Notification();
			notification.setSender_read(true);
			notification.setTitle("Regarding Your Application No:"+application.getApplication_id());
			notification.setSubject("Mr."+application.getName()+"We are very sorry to say that your Application bearing Application no: "+application.getApplication_id()+" has rejected due to the following reasons:"+"\n"+application.getReason()+"\n"+"Better luck next time, any Further information will be notified soon.");
			notification.setRecipient_read(false);
			notification.setRecipient_name(application.getName());
			notification.setMail(false);
			notification.setRecipient_reg_id(application.getReg_no());
			notification.setSender_name("ADMIN");
			notification.setSender_reg_id("ADMINREG001");
			notification.setApplication_id(application.getApplication_id());
			notificatioservice.saveNoti(notification);
			final ServiceResponse<String> response=new ServiceResponse<>("success","Successfully updated");
			return new ResponseEntity<Object>(response,HttpStatus.OK);

		}
		
		}
		final ServiceResponse<String> response=new ServiceResponse<>("failure","application not found");
		return new ResponseEntity<Object>(response,HttpStatus.OK);
		
	
	}
	//To get accepted applications
	@GetMapping(value = "/getApplications")
	public ResponseEntity<Object> getApplication() {
		List<TrainingApplication> list=service.findAcceptSelected();
		list.forEach((application)->{
			application.setManager(eEmployeeService.findManager(eEmployeeService.findManagerId(application.getEmployee_no())));
		});
		final ServiceResponse<List<TrainingApplication>> response=new ServiceResponse<>("success",list);
		return new ResponseEntity<Object>(response,HttpStatus.OK);
	}
	//To get rejected applications
	@GetMapping(value = "/admin/getRejectedApplications")
	public ResponseEntity<Object> getRejectedApplications() {
		List<TrainingApplication> list=service.rejectedApplications();
		list.forEach((application)->{
			application.setManager(eEmployeeService.findManager(eEmployeeService.findManagerId(application.getEmployee_no())));
		});
		final ServiceResponse<List<TrainingApplication>> response=new ServiceResponse<>("success",list);
		return new ResponseEntity<Object>(response,HttpStatus.OK);
	}
	// To view published trainings
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
	//TO publish applications
	@GetMapping(value="/admin/publishSelectedApplications")
	public ResponseEntity<Object> toPublishSelected(){
		List<TrainingApplication> list=service.selectedApplicationsList();
		list.forEach(System.out::println);
		System.out.println(list.isEmpty());
		if(list.isEmpty()){
		   ServiceResponse<String> response=new ServiceResponse<>("not found","No selected applications available");
		 	return new ResponseEntity<Object>(response,HttpStatus.OK);
		}
		list.forEach((application)->{
			application.setPublish(true);
			service.saveApplication(application);
		});
		ServiceResponse<String> response=new ServiceResponse<>("success","published succesfully");
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
	//For Admin notifications
	@GetMapping(value="/updateAdminNotification/{id}")
    public ResponseEntity<Object> updateTheNoti(@PathVariable Long id){
        Optional<Notification> optional=notificatioservice.findByNotificationId(id);
        if(optional.isPresent()){
            //get the notification by Id
            Notification notification=optional.get();
            //Now Set as Trainee read true
            notification.setRecipient_read(true);
            notificatioservice.saveNoti(notification);
        
            ServiceResponse<String> response=new ServiceResponse<>("success","Succesfully Updated");
            return new ResponseEntity<Object>(response, HttpStatus.OK);
        }
        ServiceResponse<String> response=new ServiceResponse<>("not found","Not found");
        return new ResponseEntity<Object>(response, HttpStatus.OK);

	}
	//Push Calendar 
	@Autowired
	MonthlyCalendarService calendarService;
	@PostMapping(value = "/admin/postCalendar")
	public ResponseEntity<Object> postCalender(@RequestBody MonthlyCalendar calendar){
		boolean check=calendarService.check(calendar.getMonth());
		if(check==false){
			calendarService.save(calendar);
			ServiceResponse<String> response=new ServiceResponse<>("success","Successfully saved");
        	return new ResponseEntity<Object>(response, HttpStatus.OK);
		}
		ServiceResponse<String> response=new ServiceResponse<>("error","already exists");
        return new ResponseEntity<Object>(response, HttpStatus.OK);
	}
	@GetMapping(value="/getMonthlyCaleders")
	public ResponseEntity<Object> getMonthlyCaleders(){
		
		ServiceResponse<List<MonthlyCalendar>> response=new ServiceResponse<>("success",calendarService.getAll());
        return new ResponseEntity<Object>(response, HttpStatus.OK);
	}

}
