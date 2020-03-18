/*
 * Copyright (c) 2020. All rights reserved to Directorate Of accounts and Treasuries, Guwahati.
 * @Author: Pranjal Das
 */

package com.doat.recruitment.jpa.controller;

import com.doat.recruitment.jpa.model.Registration;
import com.doat.recruitment.jpa.model.User;
import com.doat.recruitment.jpa.services.LoginService;
import com.doat.recruitment.jpa.services.RegistrationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

@Controller
public class RegistrationController {

    @Autowired
    RegistrationService registrationService;
    //Injecting Login object in Spring Bean Container
    @Autowired
    private User user;

    @Autowired
    private LoginService loginservice;


    @RequestMapping(value = "/newregister")
    public String postRegister() {
        return "new_register";
    }

    // Registration id generator
    private static String regIdGenerator(final String job, final String firstname, final String lastname, final String time, String date) {
        int size = 20;
        StringBuilder regid = new StringBuilder(size);

        for (int i = 0; i <= 3; i++) {
            regid.append(job.charAt(i));

        }
        for (int n = 0; n <= 3; n++) {
            regid.append(date.charAt(n));

        }
        for (int j = 0; j <= 2; j++) {
            regid.append(firstname.charAt(j));
        }
        for (int l = 0; l <= 3; l++) {
            regid.append(time.charAt(l));
        }
        for (int k = 0; k <= 2; k++) {
            regid.append(lastname.charAt(k));
        }

        return regid.toString().toUpperCase();
    }

    @RequestMapping(value = "/notification")
    public String viewNotification() {
        return "notification";
    }

    @RequestMapping(value = "/saveregistration", method = RequestMethod.POST)
    public String saveRegister(@ModelAttribute("registration") Registration registration) {

        final String job = registration.getJob_title().replaceAll("\\s", "");
        final String firstname = registration.getFname().replaceAll("\\s", "");
        final String lastname = registration.getLname().replaceAll("\\s", "");

        Calendar cal = Calendar.getInstance();
        SimpleDateFormat sdf = new SimpleDateFormat("HHmmss");
        String time = sdf.format(cal.getTime());

        SimpleDateFormat dateFormat = new SimpleDateFormat("ddMMyyyy");
        Date dob = registration.getDate_of_birth();
        String date = dateFormat.format(dob).replaceAll("\\s", "");
        System.out.println(date);

        final String regid = regIdGenerator(job, firstname, lastname, time, date);
        registration.setReg_id(regid);


        System.out.println(registration.toString());
        registrationService.saveNewRegistration(registration);


        //to fill Login Details
        user.setUsername(registration.getEmail());
        user.setPassword(registration.getPassword());
        user.setRole("USER");
        user.setActive(true);
        loginservice.saveLogin(user);

        return "redirect:/notification";
    }

    @RequestMapping(value = "/authentication", method = RequestMethod.POST)
    public String authenticating(@ModelAttribute("login") User user) {
        int response = loginservice.authenticating(user);
        System.out.println(response);
        if (response == 1) {
            return "dashmain";
        }
        return "wrong input";
    }

    @RequestMapping(value = "/register")
    public String viewRegister() {
        return "new_register";
    }

}
