/*
 * Copyright (c) 2020. All rights reserved to Directorate Of accounts and Treasuries, Guwahati.
 * @Author: Pranjal Das
 */

package com.doat.recruitment.jpa.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class FormController {
    @RequestMapping
    public String viewForms() {
        return "dashmain";
    }
}
