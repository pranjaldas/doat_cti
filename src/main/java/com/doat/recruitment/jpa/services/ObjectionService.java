/*
 * Copyright (c) 2020. All rights reserved to Directorate Of accounts and Treasuries, Guwahati.
 * @Author: Pranjal Das
 */

package com.doat.recruitment.jpa.services;

import com.doat.recruitment.jpa.model.Objection;
import com.doat.recruitment.jpa.repository.ObjectionRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

@Service
public class ObjectionService {
    @Autowired
    ObjectionRepository repository;
    public void saveObjection(Objection objection){
        repository.save(objection);
    }
    public List<Objection> findAll(){
        List<Objection> list=new ArrayList<>();
        repository.findAll().forEach(list::add);
        return list;
    }
    public Objection findById(int objection_id){
        Optional<Objection> optional=repository.findById(objection_id);
        if (optional.isPresent()){
            return optional.get();
        }
        return null;

    }
}
