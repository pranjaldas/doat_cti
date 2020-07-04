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
	private String application_id;
	@Transient
	private boolean mail;
    @CreationTimestamp
    private LocalTime notificatio_create_time;
    @CreationTimestamp
	private LocalDate notificatio_create_date;
	@UpdateTimestamp
	private LocalDateTime notification_update_date;
	private String sender_reg_id;
	private String sender_name;
	private boolean sender_read;
	private String recipient_reg_id;
	private String recipient_name;
	private boolean recipient_read;
	public Notification() {
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
	public boolean isMail() {
		return mail;
	}
	public void setMail(boolean mail) {
		this.mail = mail;
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
	public String getSender_reg_id() {
		return sender_reg_id;
	}
	public void setSender_reg_id(String sender_reg_id) {
		this.sender_reg_id = sender_reg_id;
	}
	public String getSender_name() {
		return sender_name;
	}
	public void setSender_name(String sender_name) {
		this.sender_name = sender_name;
	}
	public boolean isSender_read() {
		return sender_read;
	}
	public void setSender_read(boolean sender_read) {
		this.sender_read = sender_read;
	}
	public String getRecipient_reg_id() {
		return recipient_reg_id;
	}
	public void setRecipient_reg_id(String recipient_reg_id) {
		this.recipient_reg_id = recipient_reg_id;
	}
	public String getRecipient_name() {
		return recipient_name;
	}
	public void setRecipient_name(String recipient_name) {
		this.recipient_name = recipient_name;
	}
	public boolean isRecipient_read() {
		return recipient_read;
	}
	public void setRecipient_read(boolean recipient_read) {
		this.recipient_read = recipient_read;
	}
	

	public Notification(Long id, String title, String subject, String application_id, boolean mail,
			LocalTime notificatio_create_time, LocalDate notificatio_create_date,
			LocalDateTime notification_update_date, String sender_reg_id, String sender_name, boolean sender_read,
			String recipient_reg_id, String recipient_name, boolean recipient_read) {
		this.id = id;
		this.title = title;
		this.subject = subject;
		this.application_id = application_id;
		this.mail = mail;
		this.notificatio_create_time = notificatio_create_time;
		this.notificatio_create_date = notificatio_create_date;
		this.notification_update_date = notification_update_date;
		this.sender_reg_id = sender_reg_id;
		this.sender_name = sender_name;
		this.sender_read = sender_read;
		this.recipient_reg_id = recipient_reg_id;
		this.recipient_name = recipient_name;
		this.recipient_read = recipient_read;
	}

	public String getApplication_id() {
		return application_id;
	}

	public void setApplication_id(String application_id) {
		this.application_id = application_id;
	}

	@Override
	public String toString() {
		return "Notification [application_id=" + application_id + ", id=" + id + ", mail=" + mail
				+ ", notificatio_create_date=" + notificatio_create_date + ", notificatio_create_time="
				+ notificatio_create_time + ", notification_update_date=" + notification_update_date
				+ ", recipient_name=" + recipient_name + ", recipient_read=" + recipient_read + ", recipient_reg_id="
				+ recipient_reg_id + ", sender_name=" + sender_name + ", sender_read=" + sender_read
				+ ", sender_reg_id=" + sender_reg_id + ", subject=" + subject + ", title=" + title + "]";
	}
	
	
    
	
    
    
}