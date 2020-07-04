package com.doat.recruitment.jpa.controller;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Optional;

import com.doat.recruitment.jpa.model.Employee;
import com.doat.recruitment.jpa.model.Notification;
import com.doat.recruitment.jpa.model.Registration;
import com.doat.recruitment.jpa.model.TrainingApplication;
import com.doat.recruitment.jpa.response.ServiceResponse;
import com.doat.recruitment.jpa.services.ApplicationService;
import com.doat.recruitment.jpa.services.EmployeeService;
import com.doat.recruitment.jpa.services.MailService;
import com.doat.recruitment.jpa.services.NotificationService;
import com.doat.recruitment.jpa.services.RegistrationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpCookie;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class RestControllerUser {
    @Autowired
    NotificationService notificatioservice;
    @Autowired
    MailService mailService;
    @Autowired
    RegistrationService registrationService;
    @Autowired
    ApplicationService applicationService;
    @Autowired
    EmployeeService employeeService;

    @GetMapping(value="/getAllNotification")
    public ResponseEntity<Object> findAllNotification(){
        List<Notification> notification=notificatioservice.findAllnoti();
        Collections.reverse(notification);
        ServiceResponse<List<Notification>> response=new ServiceResponse<>("success",notification);
        return new ResponseEntity<Object>(response, HttpStatus.OK);
        
    }
    @PostMapping(value="/postNotification")
    public ResponseEntity<Object> postNotification(@RequestBody Notification notification){
        
            if(notification.isMail()){
                Optional<Registration> optional=registrationService.findRegistrationById(notification.getRecipient_reg_id());
                if(optional.isPresent()){
                    Registration registration=optional.get();
                    try {
                        mailService.sendEmail(registration.getEmail(),notification.getTitle(),notification.getSubject());
                        notificatioservice.saveNoti(notification);
                        ServiceResponse<Notification> response=new ServiceResponse<>("success",notification);
                        return new ResponseEntity<Object>(response, HttpStatus.OK);
                        
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                    notificatioservice.saveNoti(notification);
                    ServiceResponse<Notification> response=new ServiceResponse<>("mail not send",notification);
                    return new ResponseEntity<Object>(response, HttpStatus.OK);
                }
                ServiceResponse<Notification> response=new ServiceResponse<>("not registered",notification);
                return new ResponseEntity<Object>(response, HttpStatus.OK);
            }
            notificatioservice.saveNoti(notification);
            ServiceResponse<Notification> response=new ServiceResponse<>("success",notification);
            return new ResponseEntity<Object>(response, HttpStatus.OK);
      
      
       
    }
    @GetMapping(value="/getTheNotification/{id}")
    public ResponseEntity<Object> getTheNoti(@PathVariable Long id){
        Optional<Notification> optional=notificatioservice.findByNotificationId(id);
        if(optional.isPresent()){
            ServiceResponse<Notification> response=new ServiceResponse<>("success",optional.get());
            return new ResponseEntity<Object>(response, HttpStatus.OK);
            
        }
        ServiceResponse<String> response=new ServiceResponse<>("not found","Not found");
        return new ResponseEntity<Object>(response, HttpStatus.OK);

    }
    @GetMapping(value="/getTheNotificationbyReg/{trainee_reg_id}")
    public ResponseEntity<Object> getTheNotiByReg(@PathVariable String trainee_reg_id){
        List<Notification> notificationlist=notificatioservice.findAllByRegNo(trainee_reg_id);
        if(notificationlist.isEmpty()){
            ServiceResponse<String> response=new ServiceResponse<>("not found","Not found");
            return new ResponseEntity<Object>(response, HttpStatus.OK);
        }
        Collections.reverse(notificationlist);
        ServiceResponse<List<Notification>> response=new ServiceResponse<>("success",notificationlist);
        return new ResponseEntity<Object>(response, HttpStatus.OK);
       

    }
    @GetMapping(value="/getUnreadMsg/{trainee_reg_id}")
    public ResponseEntity<Object> getUnreadmsgCount(@PathVariable String trainee_reg_id){
        Integer count=notificatioservice.countUserUnread(trainee_reg_id);
        if(count==0){
            ServiceResponse<String> response=new ServiceResponse<>("success","No Unread messages");
        return new ResponseEntity<Object>(response, HttpStatus.OK);
        }
        ServiceResponse<Integer> response=new ServiceResponse<>("success",count);
        return new ResponseEntity<Object>(response, HttpStatus.OK);
       

    }
    @GetMapping(value="/updateNotification/{id}")
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
    @GetMapping(value="/testCookie")
    public ResponseEntity<Object> getCookie(){
        HttpCookie cookie=new HttpCookie("user","pass");
        ServiceResponse<Object> response=new ServiceResponse<>("not found",cookie);
        return new ResponseEntity<Object>(response, HttpStatus.OK);
    }
    //Raise Objection API

    @GetMapping(value="/user/raiseObjection/{application_id}")
    public ResponseEntity<Object> raiseObjection(@PathVariable String application_id)throws NullPointerException{
        Optional<TrainingApplication> optional=applicationService.findApplication(application_id);
        // If application_status of senior is rejected then only he can raise objection against his juniors
        if(optional.isPresent()){
            TrainingApplication seniorApplication=optional.get();
            List<Employee> juniorlist=findJuniors(seniorApplication.getEmployee_no());
            if(!juniorlist.isEmpty()){
                List<TrainingApplication> juniorAppliedList=findJuniorThatApplied(juniorlist,seniorApplication.getTraining_prog_id());
                if(!juniorAppliedList.isEmpty()){
                    List<TrainingApplication> juniorsAppliesSelectedList=findJuniorThatAppliedAndSelected(juniorAppliedList);
                    if(!juniorsAppliesSelectedList.isEmpty()){
                      ServiceResponse<List<TrainingApplication>> response=new ServiceResponse<>("success",juniorsAppliesSelectedList);
                      return new ResponseEntity<Object>(response, HttpStatus.OK);
    
                    }
                    ServiceResponse<String> response=new ServiceResponse<>("no juniors selected","Your no any juniors selected that apply this training program");
                    return new ResponseEntity<Object>(response, HttpStatus.OK); 
                  
                }
                ServiceResponse<String> response=new ServiceResponse<>("no juniors applied","No juniors available that apply this training program");
                return new ResponseEntity<Object>(response, HttpStatus.OK);
              
            }
            ServiceResponse<String> response=new ServiceResponse<>("unauthorised","No juniors available");
            return new ResponseEntity<Object>(response, HttpStatus.OK);
        }
        ServiceResponse<String> response=new ServiceResponse<>("not found","Application not found");
        return new ResponseEntity<Object>(response, HttpStatus.OK);
    }
    private List<TrainingApplication> findJuniorThatAppliedAndSelected(List<TrainingApplication> juniorAppliedList)throws NullPointerException {
        List<TrainingApplication> finalListofJuniorApplicationSelected=new ArrayList<>();
        juniorAppliedList.forEach((juniorapplication)->{
            Optional<TrainingApplication> optional=applicationService.findApplicationJuniorsSelected(juniorapplication.getApplication_id());
            if(optional.isPresent()){
              finalListofJuniorApplicationSelected.add(optional.get());
            }
        });
		return finalListofJuniorApplicationSelected;
	}
	private List<TrainingApplication> findJuniorThatApplied(List<Employee> juniorlist, String seniorTrainingPrgId) {
        List<TrainingApplication> finalListofJuniorApplication=new ArrayList<>();
        juniorlist.forEach((juniorEmployee)->{
            Optional<TrainingApplication> optionaljuniorApplication=applicationService.findRaiseObjectionApplication(juniorEmployee.getEmployee_id(),seniorTrainingPrgId);
            if(optionaljuniorApplication.isPresent()){
               TrainingApplication application=optionaljuniorApplication.get(); 
               finalListofJuniorApplication.add(application);
            }

        });
		return finalListofJuniorApplication;
	}
	public List<Employee>  findJuniors(String employee_id){
        return employeeService.findAllJuniors(employee_id);
    }
    //API Objection notification send to juniors
    @PostMapping(value = "/user/sendObjectionNotification/{application_id}")
    public ResponseEntity<Object> sendObjectionNotification(@RequestBody TrainingApplication objectionreceiverapplication, @PathVariable String application_id){
        Optional<TrainingApplication> optional=applicationService.findApplication(application_id);
        if(optional.isPresent()){
            TrainingApplication seniorApplication=optional.get();
            Notification notification=new Notification();
            notification.setSender_read(true);
			notification.setTitle("Objection Raised.");
			notification.setSubject("Mr. "+objectionreceiverapplication.getName()+ " An objection has raised against you by your senior officer Mr. "+seniorApplication.getName()+ " with respect to your Application bearing Application no: "+objectionreceiverapplication.getApplication_id()+" . Please contact to him or the ADMIN to resolve the objection.");
			notification.setRecipient_read(false);
			notification.setRecipient_name(objectionreceiverapplication.getName());
			notification.setMail(false);
			notification.setSender_reg_id(seniorApplication.getReg_no());
			notification.setSender_name(seniorApplication.getName());
            notification.setApplication_id(objectionreceiverapplication.getApplication_id());
            notification.setRecipient_reg_id(objectionreceiverapplication.getReg_no());
            notificatioservice.saveNoti(notification);
            ServiceResponse<String> response=new ServiceResponse<>("sent objection","objection sent to"+objectionreceiverapplication.getName());
            return new ResponseEntity<Object>(response, HttpStatus.OK);
        }

        ServiceResponse<String> response=new ServiceResponse<>("not found","objection not sent to"+objectionreceiverapplication.getName());
        return new ResponseEntity<Object>(response, HttpStatus.OK);
    }  
}