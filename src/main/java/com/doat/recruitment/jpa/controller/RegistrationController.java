/*
 * Copyright (c) 2020. All rights reserved to Directorate Of accounts and Treasuries, Guwahati.
 * @Author: Pranjal Das
 */

package com.doat.recruitment.jpa.controller;

import com.doat.recruitment.jpa.model.Logindetails;
import com.doat.recruitment.jpa.model.Registration;
import com.doat.recruitment.jpa.services.LoginService;
import com.doat.recruitment.jpa.services.RegistrationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class RegistrationController {

    @Autowired
    RegistrationService registrationService;
    //Injecting Login object in Spring Bean Container
    @Autowired
    private Logindetails logindetails;

    @Autowired
    private LoginService loginservice;


    @RequestMapping(value = "/newregister")
    public String postRegister() {
        return "new_register";
    }

    @RequestMapping(value = "/saveregistration", method = RequestMethod.POST)
    public String saveRegister(@ModelAttribute("registration") Registration registration) {

        System.out.println(registration.toString());
        registrationService.saveNewRegistration(registration);
        //to fill Login Details
        logindetails.setReg_id(registration.getId());
        logindetails.setPassword(registration.getPassword());
        logindetails.setUsername(registration.getEmail());
        loginservice.saveLogin(logindetails);

        return "redirect:/notification";
    }

    @RequestMapping(value = "/notification")
    public String viewNotification() {
        return "notification";
    }

    @RequestMapping(value = "/authentication", method = RequestMethod.POST)
    public String authenticating(@ModelAttribute("login") Logindetails logindetails) {
        int response = loginservice.authenticating(logindetails);
        System.out.println(response);
        if (response == 1) {
            return "dashmain";
        }
        return "wrong input";
    }
}
