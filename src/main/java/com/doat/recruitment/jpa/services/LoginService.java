

/*
 * Copyright (c) 2020. All rights reserved to Directorate Of accounts and Treasuries, Guwahati.
 * @Author: Pranjal Das
 */

package com.doat.recruitment.jpa.services;

import com.doat.recruitment.jpa.model.Logindetails;
import com.doat.recruitment.jpa.repository.LoginRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class LoginService {
    @Autowired
    LoginRepository loginRepository;


    public void saveLogin(Logindetails logindetails) {
        loginRepository.save(logindetails);
    }

    public void updateLogin(Logindetails logindetails, int id) {
        loginRepository.save(logindetails);
    }

    public List<Logindetails> showAllLogins() {
        List<Logindetails> logins = new ArrayList<>();
        loginRepository.findAll().forEach(logins::add);
        return logins;
    }

    public int authenticating(Logindetails logindetails) {
        Logindetails login = loginRepository.findByUsernameAndPassword(logindetails.getUsername(), logindetails.getPassword());
        if (login != null) {
            return 1;
        }
        return 0;

    }
}
