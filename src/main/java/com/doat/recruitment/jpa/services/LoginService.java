

/*
 * Copyright (c) 2020. All rights reserved to Directorate Of accounts and Treasuries, Guwahati.
 * @Author: Pranjal Das
 */

package com.doat.recruitment.jpa.services;

import com.doat.recruitment.jpa.model.User;
import com.doat.recruitment.jpa.repository.LoginRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class LoginService {
    @Autowired
    LoginRepository loginRepository;


    public void saveLogin(User user) {
        loginRepository.save(user);
    }

    public void updateLogin(User user, int id) {
        loginRepository.save(user);
    }

    //for testing only
    public List<User> showAllLogins() {
        List<User> logins = new ArrayList<>();
        loginRepository.findAll().forEach(logins::add);
        return logins;
    }

    public int authenticating(User user) {
        User login = loginRepository.findByUsernameAndPassword(user.getUsername(), user.getPassword());
        if (login != null) {
            return 1;
        }
        return 0;

    }
}
