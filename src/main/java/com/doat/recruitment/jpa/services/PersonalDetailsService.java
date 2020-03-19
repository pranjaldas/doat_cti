/*
 * Copyright (c) 2020. All rights reserved to Directorate Of accounts and Treasuries, Guwahati.
 * @Author: Pranjal Das
 */

package com.doat.recruitment.jpa.services;

import com.doat.recruitment.jpa.model.PersonalDetails;
import com.doat.recruitment.jpa.repository.PersonalDetailsRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.ArrayList;
import java.util.List;

@Service
@Transactional
public class PersonalDetailsService {
    @Autowired
    PersonalDetailsRepository repo;


    public List<PersonalDetails> showAllpersonalDetails() {
        List<PersonalDetails> details = new ArrayList<>();
        repo.findAll().forEach(details::add);
        return details;
    }

    public void saveNewPersonalDetails(PersonalDetails details) {

        repo.save(details);
    }


}
