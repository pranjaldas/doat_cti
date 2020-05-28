/*
 * Copyright (c) 2020. All rights reserved to Directorate Of accounts and Treasuries, Guwahati.
 * @Author: Pranjal Das for Doat
 */

package com.doat.recruitment.jpa.controller;


import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class FormViewController {
    

    @RequestMapping(value="/index")
    public String viewHome() {
    	return "index";
    }
 
   
    @RequestMapping(value = "/admin")
    public String adminPannel(){
        return "admin";
    }
}