package com.doat.recruitment.jpa.services;

import com.doat.recruitment.jpa.repository.NotificationRepository;

import com.doat.recruitment.jpa.model.Notification;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

@Service
public class NotificationService {
    @Autowired
    NotificationRepository repo;
    public List<Notification> findAllnoti() {
        List<Notification> list=new ArrayList<>();
        repo.findAll().forEach(list::add);
        return list;
    }
    public void saveNoti(Notification notification){
        repo.save(notification);
    }
    public Optional<Notification> findByNotificationId(Long id){
        return repo.findById(id);
    }
    public List<Notification> findAllByRegNo(String trainee_reg_id){
       return repo.findByReg(trainee_reg_id);
    }
	public Integer countUserUnread(String trainee_reg_id) {
		return repo.countUserUnread(trainee_reg_id);
	}
}