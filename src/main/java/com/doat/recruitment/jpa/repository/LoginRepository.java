/*
 * Copyright (c) 2020. All rights reserved to Directorate Of accounts and Treasuries, Guwahati.
 * @Author: Pranjal Das
 */

package com.doat.recruitment.jpa.repository;

import com.doat.recruitment.jpa.model.Logindetails;
import org.springframework.data.jpa.repository.JpaRepository;

public interface LoginRepository extends JpaRepository<Logindetails, Integer> {
    Logindetails findByUsernameAndPassword(String username, String password);
}
