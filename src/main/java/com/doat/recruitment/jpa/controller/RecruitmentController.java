/*
 * Copyright (c) 2020. All rights reserved to Directorate Of accounts and Treasuries, Guwahati.
 * @Author: Pranjal Das
 */

package com.doat.recruitment.jpa.controller;

import com.doat.recruitment.jpa.model.Logindetails;
import com.doat.recruitment.jpa.model.Personaldetails;
import com.doat.recruitment.jpa.model.Registration;
import com.doat.recruitment.jpa.services.LoginService;
import com.doat.recruitment.jpa.services.PersonalDetailsService;
import com.doat.recruitment.jpa.services.RegistrationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@Controller
public class RecruitmentController {
    @Autowired
    private RegistrationService registrationservice;
    @Autowired
    private PersonalDetailsService personalDetailsService;
    @Autowired
    private LoginService loginservice;

    //Injecting Login object in Spring Bean Container
    @Autowired
    private Logindetails logindetails;


    @RequestMapping("/registration")
    public List<Registration> getRegistrations() {

        return registrationservice.showAllregistration();
    }

    @RequestMapping(value = "/registration", method = RequestMethod.POST)
    public @ResponseBody
    String saveRegistration(@RequestBody Registration registration) {
        registrationservice.saveNewRegistration(registration);
        //to fill Login Details
        logindetails.setReg_id(registration.getId());
        logindetails.setPassword(registration.getPassword());
        logindetails.setUsername(registration.getEmail());
        loginservice.saveLogin(logindetails);
        return "Saved registration Successfully";
    }


    //Personal Details Controller
    @RequestMapping("registration/details")
    public List<Personaldetails> getRegistrationDetails() {

        return personalDetailsService.showAllpersonalDetails();
    }

    @RequestMapping(value = "registration/details", method = RequestMethod.POST)
    public @ResponseBody
    String postDetails(@RequestBody Personaldetails details) {
        personalDetailsService.saveNewPersonalDetails(details);

        return "Saved details";
    }

    //Login Services Controllers are bellow
    @RequestMapping(method = RequestMethod.PUT, value = "registration/login/{id}")
    public void updateLogindetails(@RequestBody Logindetails logindetails, @PathVariable int id) {

        loginservice.updateLogin(logindetails, id);

        // to be done to update registration table
        int regid = logindetails.getReg_id();
        String pw = logindetails.getPassword();
        String email = logindetails.getUsername();
        registrationservice.updateregistration(regid, pw, email);

    }

    //To check login details,not necessary
    @RequestMapping("registration/login")
    public List<Logindetails> getLoginDetails() {

        return loginservice.showAllLogins();
    }

    //to login authentication,
    @RequestMapping(method = RequestMethod.POST, value = "registration/login")
    public @ResponseBody
    String authenticateLogin(@RequestBody Logindetails logindetails) {

        int result = loginservice.authenticating(logindetails);
        if (result != 0) {
            return "Valid user, you registration number is: " + result;
        }
        return "Not a valid user,password and username mismatch";
    }


}
