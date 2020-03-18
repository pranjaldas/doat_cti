/*
 * Copyright (c) 2020. All rights reserved to Directorate Of accounts and Treasuries, Guwahati.
 * @Author: Pranjal Das
 */

package com.doat.recruitment.jpa.controller;

import com.doat.recruitment.jpa.model.AddressDetails;
import com.doat.recruitment.jpa.model.Personaldetails;
import com.doat.recruitment.jpa.model.QualificationDetails;
import com.doat.recruitment.jpa.response.ServiceResponse;
import com.doat.recruitment.jpa.services.AddressService;
import com.doat.recruitment.jpa.services.PersonalDetailsService;
import com.doat.recruitment.jpa.services.QualificationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class FormRestController {
    @Autowired
    PersonalDetailsService personalDetailsService;
    @Autowired
    AddressService addressService;
    @Autowired
    QualificationService qualificationService;

    //Personal Details rest api
    @PostMapping(value = "/postDetails")
    public ResponseEntity<Object> saveDetails(@RequestBody Personaldetails personaldetails) {
        personaldetails.setPersonal_details_id(2);
        personalDetailsService.saveNewPersonalDetails(personaldetails);
        ServiceResponse<Personaldetails> response = new ServiceResponse<>("success", personaldetails);
        return new ResponseEntity<Object>(response, HttpStatus.OK);
    }

    @GetMapping(value = "/getDetails")
    public ResponseEntity<Object> getDetails() {
        ServiceResponse<List<Personaldetails>> response = new ServiceResponse<>("success", personalDetailsService.showAllpersonalDetails());
        return new ResponseEntity<Object>(response, HttpStatus.OK);
    }


    //Address details rest api
    @PostMapping(value = "/postAddress")
    public ResponseEntity<Object> saveAddress(@RequestBody AddressDetails addressDetails) {
        addressService.saveNewAddress(addressDetails);
        ServiceResponse<AddressDetails> response = new ServiceResponse<>("success", addressDetails);
        return new ResponseEntity<Object>(response, HttpStatus.OK);
    }

    @GetMapping(value = "/getAddress")
    public ResponseEntity<Object> getAddress() {
        ServiceResponse<List<AddressDetails>> resp = new ServiceResponse<>("success", addressService.showAllAddresslDetails());
        return new ResponseEntity<Object>(resp, HttpStatus.OK);
    }

    //Qualification api s
    @PostMapping(value = "/postQualification")
    public ResponseEntity<Object> postQualification(@RequestBody QualificationDetails qualificationDetails) {
        qualificationService.saveQualification(qualificationDetails);
        ServiceResponse<QualificationDetails> response = new ServiceResponse<>("success", qualificationDetails);
        return new ResponseEntity<Object>(response, HttpStatus.OK);
    }

    @GetMapping(value = "/getQualification")
    public ResponseEntity<Object> getQualification() {
        ServiceResponse<List<QualificationDetails>> response = new ServiceResponse<>("success", qualificationService.getQualifications());
        return new ResponseEntity<Object>(response, HttpStatus.OK);
    }
}
