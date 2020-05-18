package com.doat.recruitment.jpa.services;

import java.util.ArrayList;
import java.util.List;



import com.doat.recruitment.jpa.model.Events;
import com.doat.recruitment.jpa.repository.EventsRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class EventsService {
    @Autowired
    EventsRepository repo;
    public List<Events> findAllEvents(){
        List<Events> list=new ArrayList<>();
        repo.findAll().forEach(list::add);
        return list;
    }
	public void saveEvent(Events event) {
        repo.save(event);
	}
    
}