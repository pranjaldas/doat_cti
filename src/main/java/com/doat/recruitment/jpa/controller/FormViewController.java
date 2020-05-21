/*
 * Copyright (c) 2020. All rights reserved to Directorate Of accounts and Treasuries, Guwahati.
 * @Author: Pranjal Das
 */

package com.doat.recruitment.jpa.controller;

import com.doat.recruitment.jpa.model.User;
import com.doat.recruitment.jpa.services.LoginService;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class FormViewController {
    @Autowired
    LoginService LoginService;
   
    @RequestMapping(value="/user", method = RequestMethod.POST)
    public String viewUserProfile(@ModelAttribute("login") User user) {
        boolean result=LoginService.authUser(user);
        if(result==true){
            return "profile";
        }
        
    	return "error";
    }

    @RequestMapping(value="/index")
    public String viewHome() {
    	return "index";
    }
 
   
    @RequestMapping(value = "/admin")
    public String adminPannel(){
        return "admin";
    }
}