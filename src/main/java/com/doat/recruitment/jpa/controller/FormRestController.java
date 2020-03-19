/*
 * Copyright (c) 2020. All rights reserved to Directorate Of accounts and Treasuries, Guwahati.
 * @Author: Pranjal Das
 */

package com.doat.recruitment.jpa.controller;

import com.doat.recruitment.jpa.model.AddressDetails;
import com.doat.recruitment.jpa.model.Document;
import com.doat.recruitment.jpa.model.PersonalDetails;
import com.doat.recruitment.jpa.model.QualificationDetails;
import com.doat.recruitment.jpa.payload.UploadFileResponse;
import com.doat.recruitment.jpa.response.ServiceResponse;
import com.doat.recruitment.jpa.services.AddressService;
import com.doat.recruitment.jpa.services.DocumentService;
import com.doat.recruitment.jpa.services.PersonalDetailsService;
import com.doat.recruitment.jpa.services.QualificationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.ByteArrayResource;
import org.springframework.core.io.Resource;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.support.ServletUriComponentsBuilder;

import java.io.IOException;
import java.util.List;

@RestController
public class FormRestController {
    @Autowired
    PersonalDetailsService personalDetailsService;
    @Autowired
    AddressService addressService;
    @Autowired
    QualificationService qualificationService;

    //Documents api s
    @Autowired
    private DocumentService documentService;

    //Personal Details rest api
    @PostMapping(value = "/postDetails")
    public ResponseEntity<Object> saveDetails(@RequestBody PersonalDetails personaldetails) {
        personaldetails.setPersonal_details_id(2);
        personalDetailsService.saveNewPersonalDetails(personaldetails);
        ServiceResponse<PersonalDetails> response = new ServiceResponse<>("success", personaldetails);
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

    @GetMapping(value = "/getDetails")
    public ResponseEntity<Object> getDetails() {
        ServiceResponse<List<PersonalDetails>> response = new ServiceResponse<>("success", personalDetailsService.showAllpersonalDetails());
        return new ResponseEntity<Object>(response, HttpStatus.OK);
    }

    @PostMapping("/uploadFile")
    public UploadFileResponse uploadFile(@RequestParam("file") MultipartFile file) throws IOException {
        Document document = documentService.storeDocument(file);

        String fileDownloadUri = ServletUriComponentsBuilder.fromCurrentContextPath()
                .path("/downloadFile/")
                .path(document.getDoc_id())
                .toUriString();

        return new UploadFileResponse(document.getDoc_name(), fileDownloadUri,
                file.getContentType(), file.getSize());
    }

    @GetMapping("/downloadFile/{fileId}")
    public ResponseEntity<Resource> downloadFile(@PathVariable String fileId) {
        // Load file from database
        Document document = documentService.getDocument(fileId);


        return ResponseEntity.ok()
                .contentType(MediaType.parseMediaType(document.getDoc_type()))
                .header(HttpHeaders.CONTENT_DISPOSITION, "attachment; filename=\"" + document.getDoc_name() + "\"")
                .body(new ByteArrayResource(document.getData()));
    }


}
