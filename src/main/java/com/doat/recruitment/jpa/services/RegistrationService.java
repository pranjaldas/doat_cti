/*
 * Copyright (c) 2020. All rights reserved to Directorate Of accounts and Treasuries, Guwahati.
 * @Author: Pranjal Das
 */

package com.doat.recruitment.jpa.services;

import com.doat.recruitment.jpa.model.Registration;
import com.doat.recruitment.jpa.repository.RegistrationRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.transaction.Transactional;
import java.util.ArrayList;
import java.util.List;

@Transactional
@Service
public class RegistrationService {
    @Autowired
    private RegistrationRepository repo;

    //To save a registratiion
    public void saveNewRegistration(Registration registration) {
        repo.save(registration);
    }


    //to view Registrations
    public List<Registration> showAllregistration() {
        List<Registration> registrations = new ArrayList<>();
        repo.findAll().forEach(registrations::add);
        return registrations;
    }

    //update due to login update
    public void updateregistration(int regid, String pw, String email) {
        Registration regiupdate = repo.findById(regid).get();
        regiupdate.setPassword(pw);
        regiupdate.setEmail(email);
        repo.save(regiupdate);
    }
}
