/*
 * Copyright (c) 2020. All rights reserved to Directorate Of accounts and Treasuries, Guwahati.
 * @Author: Pranjal Das
 */

package com.doat.recruitment.jpa.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class FormViewController {
   
    @RequestMapping(value="/web")
    public String viewNotification() {
    	return "notificationn";
    }
    @RequestMapping(value="/newtraining")
    public String viewRegistration() {
    	return "notificationform";
    }
    @RequestMapping(value="/index")
    public String viewHome() {
    	return "index";
    }
 
    @RequestMapping(value="/selected")
    public String viewSelected(){
	 return "Selected";
    }
}