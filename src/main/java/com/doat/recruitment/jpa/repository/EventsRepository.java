package com.doat.recruitment.jpa.repository;

import com.doat.recruitment.jpa.model.Events;

import org.springframework.data.jpa.repository.JpaRepository;

public interface EventsRepository extends JpaRepository<Events,Integer>{
    
}