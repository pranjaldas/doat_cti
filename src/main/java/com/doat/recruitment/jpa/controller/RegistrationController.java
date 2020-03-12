/*
 * Copyright (c) 2020. All rights reserved to Directorate Of accounts and Treasuries, Guwahati.
 * @Author: Pranjal Das
 */

package com.doat.recruitment.jpa.controller;

import com.doat.recruitment.jpa.model.Registration;
import com.doat.recruitment.jpa.services.RegistrationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

@Controller
public class RegistrationController {

    @Autowired
    RegistrationService registrationService;


    @RequestMapping(value = "/newregister")
    public String postRegister(){
        return "new_register";
    }
    @RequestMapping(value = "/saveregistration", method = RequestMethod.POST)
    public String saveProduct(@ModelAttribute("registration")Registration registration){

        System.out.println(registration.toString());
        registrationService.saveNewRegistration(registration);

        return "redirect:/newregister";
    }
}
