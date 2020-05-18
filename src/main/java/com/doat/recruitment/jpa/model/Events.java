package com.doat.recruitment.jpa.model;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="events")
public class Events {
    @Id
    private int event_id;
    private String start;
    private String end;
    private String text;
    private String color;

    public Events(int event_id,String start, String end, String text, String color) {
        this.event_id=event_id;
        this.start = start;
        this.end = end;
        this.text = text;
        this.color = color;
    }

    public Events() {
    }
    
    public String getStart() {
        return start;
    }

    public void setStart(String start) {
        this.start = start;
    }

    public String getEnd() {
        return end;
    }

    public void setEnd(String end) {
        this.end = end;
    }

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    

    public int getEvent_id() {
        return event_id;
    }

    public void setEvent_id(int event_id) {
        this.event_id = event_id;
    }

    @Override
    public String toString() {
        return "Events [color=" + color + ", end=" + end + ", event_id=" + event_id + ", start=" + start + ", text="
                + text + "]";
    }

    
    
    
    
    
}