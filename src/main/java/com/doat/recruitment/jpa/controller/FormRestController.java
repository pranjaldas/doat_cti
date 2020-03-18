/*
 * Copyright (c) 2020. All rights reserved to Directorate Of accounts and Treasuries, Guwahati.
 * @Author: Pranjal Das
 */

package com.doat.recruitment.jpa.controller;

import com.doat.recruitment.jpa.model.Personaldetails;
import com.doat.recruitment.jpa.services.PersonalDetailsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class FormRestController {
    @Autowired
    PersonalDetailsService personalDetailsService;

    @PostMapping(value = "/postDetails")
    public String saveDetails(@RequestBody Personaldetails personaldetails) {
        System.out.println(personaldetails.toString());
        personalDetailsService.saveNewPersonalDetails(personaldetails);
        return "saved";
    }

    @GetMapping(value = "/getDetails")
    public List<Personaldetails> viewDetails() {
        return personalDetailsService.showAllpersonalDetails();

    }
}
