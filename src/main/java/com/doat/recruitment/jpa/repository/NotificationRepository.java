package com.doat.recruitment.jpa.repository;

import java.util.List;

import com.doat.recruitment.jpa.model.Notification;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface NotificationRepository extends JpaRepository<Notification, Long>{
    @Query(value="SELECT * FROM notification AS noti WHERE noti.sender_reg_id=:trainee_reg_id OR noti.recipient_reg_id=:trainee_reg_id", nativeQuery = true)
	List<Notification> findByReg(String trainee_reg_id);
    @Query(value="SELECT COUNT(*) FROM notification AS noti WHERE noti.recipient_reg_id=:trainee_reg_id AND noti.recipient_read=false", nativeQuery = true)
	Integer countUserUnread(String trainee_reg_id);
    
}