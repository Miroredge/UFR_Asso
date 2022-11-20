package com.ufrAsso.entity;

import java.time.LocalDateTime;
import java.time.OffsetDateTime;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonProperty;
import com.ufrAsso.functions.Utils;

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
    @Column(name = "CRE_DAT")
    private OffsetDateTime creation_date;
    @Column(name = "CRE_ID")
    private String creation_id;
    @Column(name = "UPD_DAT")
    private OffsetDateTime update_date;
    @Column(name = "UPD_ID")
    private String update_id;

    @OneToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "CRE_ASO_ROW_IDT", nullable = false, referencedColumnName = "ROW_IDT")
    private Asso asso;
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

    public Asso getAsso() {
        return asso;
    }

    public OffsetDateTime getCreation_date() {
        return creation_date;
    }

    public String getCreation_id() {
        return creation_id;
    }

    public OffsetDateTime getUpdate_date() {
        return update_date;
    }

    public String getUpdate_id() {
        return update_id;
    }

    // Setters without @JsonProperty("name").
    public void setId(long id) {
        this.id = id;
    }

    public void setName(String name) {
        this.name = name;
        this.update_date = Utils.getOffsetDateTimeNow();
        this.update_id = "API - Event - Setters";

    }

    public void setStart_date_time(LocalDateTime start_date_time) {
        this.start_date_time = start_date_time;
        this.update_date = Utils.getOffsetDateTimeNow();
        this.update_id = "API - Event - Setters";
    }

    public void setEnd_date_time(LocalDateTime end_date_time) {
        this.end_date_time = end_date_time;
        this.update_date = Utils.getOffsetDateTimeNow();
        this.update_id = "API - Event - Setters";
    }

    public void setOrganizer_name(String organizer_name) {
        this.organizer_name = organizer_name;
        this.update_date = Utils.getOffsetDateTimeNow();
        this.update_id = "API - Event - Setters";
    }

    public void setPlace(String place) {
        this.place = place;
        this.update_date = Utils.getOffsetDateTimeNow();
        this.update_id = "API - Event - Setters";
    }

    public void setPrice(double price) {
        this.price = price;
        this.update_date = Utils.getOffsetDateTimeNow();
        this.update_id = "API - Event - Setters";
    }

    public void setDescription(String description) {
        this.description = description;
        this.update_date = Utils.getOffsetDateTimeNow();
        this.update_id = "API - Event - Setters";
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
        this.creation_date = Utils.getOffsetDateTimeNow();
        this.creation_id = "API - Event - Constructor";
        this.update_date = Utils.getOffsetDateTimeNow();
        this.update_id = "API - Event - Constructor";
    }

    // toString
    @Override
    public String toString() {
        return "Event [id=" + id + ", name=" + name + ", start_date_time=" + start_date_time + ", end_date_time="
                + end_date_time + ", organizer_name=" + organizer_name + ", place=" + place + ", price=" + price
                + ", description=" + description + ", asso=" + asso + ", creation_date=" + creation_date
                + ", creation_id=" + creation_id + ", update_date=" + update_date + ", update_id=" + update_id + "]";
    }
}
