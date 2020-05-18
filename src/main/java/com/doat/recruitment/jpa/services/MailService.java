package com.doat.recruitment.jpa.services;

import com.doat.recruitment.jpa.model.Registration;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.MailException;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

@Service
public class MailService {
    private final JavaMailSender javaMailSender;

    @Autowired
    public MailService(final JavaMailSender javaMailSender) {
        this.javaMailSender = javaMailSender;
    }

    public void sendMail(final Registration registration) throws MailException{
        final SimpleMailMessage mail=new SimpleMailMessage();
        mail.setTo(registration.getEmail());
        mail.setSubject("Registration Succesfull");
        mail.setText("Hellow "+registration.getName()+".\n You are successfully registered into the CENTRAL TRAINING INSTITUTE. \n Your user ID is:"+registration.getEmployee_no()+"\n and Password is: "+registration.getPassword());
        mail.setFrom("bakibohi@gmail.com");
        javaMailSender.send(mail);
    }
        
    
    
}