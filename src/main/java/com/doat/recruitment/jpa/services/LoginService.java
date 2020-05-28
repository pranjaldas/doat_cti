package com.doat.recruitment.jpa.services;

import com.doat.recruitment.jpa.model.User;
import com.doat.recruitment.jpa.repository.LoginRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class LoginService {
    @Autowired
    LoginRepository repo;
    
    public void saveLogin(final User user){
        repo.save(user);
    }
    public boolean authUser(final User user) {
        
        final User login= repo.findByUsernameAndPassword(user.getUsername(),user.getPassword());
        if(login!=null){
            return true;
        }
        return false;
    }
    
}