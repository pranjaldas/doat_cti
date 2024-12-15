package com.doat.recruitment.jpa.repository;

import java.util.Optional;

import com.doat.recruitment.jpa.model.MonthlyCalendar;

import org.springframework.data.jpa.repository.JpaRepository;

public interface MonthlyCalendarRepository extends JpaRepository<MonthlyCalendar, Integer>{

	Optional<MonthlyCalendar> findByMonth(String month);
    
}