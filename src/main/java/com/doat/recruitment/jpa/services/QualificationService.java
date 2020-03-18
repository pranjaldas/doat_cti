/*
 * Copyright (c) 2020. All rights reserved to Directorate Of accounts and Treasuries, Guwahati.
 * @Author: Pranjal Das
 */

package com.doat.recruitment.jpa.services;

import com.doat.recruitment.jpa.model.QualificationDetails;
import com.doat.recruitment.jpa.repository.QualificationRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class QualificationService {
    @Autowired
    QualificationRepository repository;

    public void saveQualification(QualificationDetails qualificationDetails) {
        repository.save(qualificationDetails);
    }

    public List<QualificationDetails> getQualifications() {
        List<QualificationDetails> qualificationDetails = new ArrayList<>();
        repository.findAll().forEach(qualificationDetails::add);
        return qualificationDetails;
    }
}
