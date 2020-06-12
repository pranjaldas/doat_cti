package com.doat.recruitment.jpa.services;

import java.util.ArrayList;
import java.util.List;

import com.doat.recruitment.jpa.model.Trainer;
import com.doat.recruitment.jpa.repository.TrainerRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;



@Service
public class TrainerService {
    @Autowired
    TrainerRepository repository;

    public List<Trainer> findAllTrainers(){
        List<Trainer> list=new ArrayList<Trainer>();
        repository.findAll().forEach(list::add);
        return list;
    }
    
}