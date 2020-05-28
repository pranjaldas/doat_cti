package com.doat.recruitment.jpa.repository;

import com.doat.recruitment.jpa.model.User;
import org.springframework.data.jpa.repository.JpaRepository;

public interface LoginRepository extends JpaRepository<User,String>{
    User findByUsernameAndPassword(String username,String password);
}
 