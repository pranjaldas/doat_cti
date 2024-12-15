package com.doat.recruitment.jpa.services;



import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import com.doat.recruitment.jpa.model.MonthlyCalendar;
import com.doat.recruitment.jpa.repository.MonthlyCalendarRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MonthlyCalendarService {
    @Autowired
    MonthlyCalendarRepository repo;
    public void save(MonthlyCalendar calendar){
        repo.save(calendar);   
    }
    public boolean check(String month){
        Optional<MonthlyCalendar> optional=repo.findByMonth(month);
        if(optional.isPresent()){
            return true;
        }
        return false;
    }
	public List<MonthlyCalendar> getAll() {
        List<MonthlyCalendar> list=new ArrayList<>();
        repo.findAll().forEach(list::add);
		return list;
	}
    
    
}