package com.doat.recruitment.jpa.controller;

import java.util.Collections;
import java.util.List;
import java.util.Optional;

import com.doat.recruitment.jpa.model.Notification;
import com.doat.recruitment.jpa.model.Registration;
import com.doat.recruitment.jpa.response.ServiceResponse;
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
                Optional<Registration> optional=registrationService.findRegistrationById(notification.getTrainee_reg_id());
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
                    mailService.sendEmail(registration.getEmail(),notification.getTitle(),notification.getSubject());
                    notificatioservice.saveNoti(notification);
                    ServiceResponse<Notification> response=new ServiceResponse<>("mail not send",notification);
                    return new ResponseEntity<Object>(response, HttpStatus.OK);
                }
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
            notification.setTrainee_read(true);
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
}