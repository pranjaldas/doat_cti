package com.doat.recruitment.jpa.model;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.LocalTime;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Transient;

import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.UpdateTimestamp;
@Entity
public class Notification {
    @Id
    @GeneratedValue(strategy= GenerationType.AUTO)
    private Long id;
    private String title;
    private String subject;
    private String trainee_reg_id;
    private String application_id;
    private boolean trainee_read;
	private boolean admin_read;
	@Transient
	private boolean mail;
    @CreationTimestamp
    private LocalTime notificatio_create_time;
    @CreationTimestamp
	private LocalDate notificatio_create_date;
	@UpdateTimestamp
    private LocalDateTime notification_update_date;
	private String senderSignature;
	private String receiver;
    
	public Notification(Long id, String title, String subject, String trainee_reg_id, String application_id,
			boolean trainee_read, boolean admin_read, LocalTime notificatio_create_time,
			LocalDate notificatio_create_date, LocalDateTime notification_update_date, String senderSignature, String receiver) {
		this.id = id;
		this.title = title;
		this.subject = subject;
		this.trainee_reg_id = trainee_reg_id;
		this.application_id = application_id;
		this.trainee_read = trainee_read;
		this.admin_read = admin_read;
		this.notificatio_create_time = notificatio_create_time;
		this.notificatio_create_date = notificatio_create_date;
		this.notification_update_date = notification_update_date;
		this.senderSignature = senderSignature;
		this.receiver= receiver;
	}
	
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getTrainee_reg_id() {
		return trainee_reg_id;
	}
	public void setTrainee_reg_id(String trainee_reg_id) {
		this.trainee_reg_id = trainee_reg_id;
	}
	public String getApplication_id() {
		return application_id;
	}
	public void setApplication_id(String application_id) {
		this.application_id = application_id;
	}
	public boolean isTrainee_read() {
		return trainee_read;
	}
	public void setTrainee_read(boolean trainee_read) {
		this.trainee_read = trainee_read;
	}
	public boolean isAdmin_read() {
		return admin_read;
	}
	public void setAdmin_read(boolean admin_read) {
		this.admin_read = admin_read;
	}
	public LocalTime getNotificatio_create_time() {
		return notificatio_create_time;
	}
	public void setNotificatio_create_time(LocalTime notificatio_create_time) {
		this.notificatio_create_time = notificatio_create_time;
	}
	public LocalDate getNotificatio_create_date() {
		return notificatio_create_date;
	}
	public void setNotificatio_create_date(LocalDate notificatio_create_date) {
		this.notificatio_create_date = notificatio_create_date;
	}
	public LocalDateTime getNotification_update_date() {
		return notification_update_date;
	}
	public void setNotification_update_date(LocalDateTime notification_update_date) {
		this.notification_update_date = notification_update_date;
	}
	public String getSenderSignature() {
		return senderSignature;
	}
	public void setSenderSignature(String senderSignature) {
		this.senderSignature = senderSignature;
	}
	
	public Notification() {
	}
	public boolean isMail() {
		return mail;
	}
	public void setMail(boolean mail) {
		this.mail = mail;
	}
	
	public String getReceiver() {
		return receiver;
	}

	public void setReceiver(String receiver) {
		this.receiver = receiver;
	}

	@Override
	public String toString() {
		return "Notification [admin_read=" + admin_read + ", application_id=" + application_id + ", id=" + id
				+ ", mail=" + mail + ", notificatio_create_date=" + notificatio_create_date
				+ ", notificatio_create_time=" + notificatio_create_time + ", notification_update_date="
				+ notification_update_date + ", receiver=" + receiver + ", senderSignature=" + senderSignature
				+ ", subject=" + subject + ", title=" + title + ", trainee_read=" + trainee_read + ", trainee_reg_id="
				+ trainee_reg_id + "]";
	}
	
    
    
}