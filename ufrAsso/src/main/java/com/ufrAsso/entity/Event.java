package com.ufrAsso.entity;

import java.time.LocalDateTime;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonProperty;

/**
 * NewsLetter entity.
 * 
 * @author Miroredge
 * @version 1.0
 */

@Entity
@Table(name = "EVT")
public class Event {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "ROW_IDT")
    private long id;
    @Column(name = "NAM", nullable = false, length = 45)
    private String name;
    @Column(name = "STT_DAT_TIM", nullable = false)
    private LocalDateTime start_date_time;
    @Column(name = "END_DAT_TIM", nullable = false)
    private LocalDateTime end_date_time;
    @Column(name = "ORG_NAM", nullable = false, length = 45)
    private String organizer_name;
    @Column(name = "PLC", nullable = false, length = 45)
    private String place;
    @Column(name = "PCE")
    private double price;
    @Column(name = "DSC")
    private String description;

    // Getters with @JsonProperty("name").

    @JsonProperty("id")
    public long getId() {
        return id;
    }

    @JsonProperty("name")
    public String getName() {
        return name;
    }

    @JsonProperty("start_date_time")
    public LocalDateTime getStart_date_time() {
        return start_date_time;
    }

    @JsonProperty("end_date_time")
    public LocalDateTime getEnd_date_time() {
        return end_date_time;
    }

    @JsonProperty("organizer_name")
    public String getOrganizer_name() {
        return organizer_name;
    }

    @JsonProperty("place")
    public String getPlace() {
        return place;
    }

    @JsonProperty("price")
    public double getPrice() {
        return price;
    }

    @JsonProperty("description")
    public String getDescription() {
        return description;
    }

    // Setters without @JsonProperty("name").
    public void setId(long id) {
        this.id = id;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setStart_date_time(LocalDateTime start_date_time) {
        this.start_date_time = start_date_time;
    }

    public void setEnd_date_time(LocalDateTime end_date_time) {
        this.end_date_time = end_date_time;
    }

    public void setOrganizer_name(String organizer_name) {
        this.organizer_name = organizer_name;
    }

    public void setPlace(String place) {
        this.place = place;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    // constructor

    public Event() {
        super();
    }

    public Event(long id, String name, LocalDateTime start_date_time, LocalDateTime end_date_time,
            String organizer_name, String place, double price, String description) {
        super();
        this.id = id;
        this.name = name;
        this.start_date_time = start_date_time;
        this.end_date_time = end_date_time;
        this.organizer_name = organizer_name;
        this.place = place;
        this.price = price;
        this.description = description;
    }

    // toString
    @Override
    public String toString() {
        return "Event [id=" + id + ", name=" + name + ", start_date_time=" + start_date_time + ", end_date_time="
                + end_date_time + ", organizer_name=" + organizer_name + ", place=" + place + ", price=" + price
                + ", description=" + description + "]";
    }
}
