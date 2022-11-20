package com.ufrAsso.entity;

import java.time.LocalTime;
import java.time.OffsetDateTime;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonProperty;
import com.ufrAsso.functions.Utils;

/**
 * OpeningHours entity.
 * 
 * @author Miroredge
 * @version 1.0
 */

@Entity
@Table(name = "OPN_HRS")
public class OpeningHours {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "ROW_IDT")
    private long id;
    @Column(name = "DAY_WEK", nullable = false, length = 10)
    private String day_of_week;
    @Column(name = "OPN", nullable = false) // format HH:MM
    private LocalTime opening_time;
    @Column(name = "CLO", nullable = false) // format HH:MM
    private LocalTime closing_time;
    @Column(name = "CRE_DAT")
    private OffsetDateTime creation_date;
    @Column(name = "CRE_ID")
    private String creation_id;
    @Column(name = "UPD_DAT")
    private OffsetDateTime update_date;
    @Column(name = "UPD_ID")
    private String update_id;

    // Many to One with Asso entity.
    @ManyToOne(optional = true)
    @JoinColumn(name = "ASO_ROW_IDT", nullable = false)
    private Asso asso;

    // Getters with @JsonProperty("name").

    @JsonProperty("id")
    public long getId() {
        return id;
    }

    @JsonProperty("day_of_week")
    public String getDay_of_week() {
        return day_of_week;
    }

    @JsonProperty("opening_time")
    public LocalTime getOpening_time() {
        return opening_time;
    }

    @JsonProperty("closing_time")
    public LocalTime getClosing_time() {
        return closing_time;
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

    public void setDay_of_week(String day_of_week) {
        this.day_of_week = day_of_week;
        this.update_date = Utils.getOffsetDateTimeNow();
        this.update_id = "API - OpeningHours - Setters";

    }

    public void setOpening_time(LocalTime opening_time) {
        this.opening_time = opening_time;
        this.update_date = Utils.getOffsetDateTimeNow();
        this.update_id = "API - OpeningHours - Setters";
    }

    public void setClosing_time(LocalTime closing_time) {
        this.closing_time = closing_time;
        this.update_date = Utils.getOffsetDateTimeNow();
        this.update_id = "API - OpeningHours - Setters";
    }

    // constructor

    public OpeningHours() {
        super();
    }

    public OpeningHours(long id, String day_of_week, LocalTime opening_time, LocalTime closing_time) {
        super();
        this.id = id;
        this.day_of_week = day_of_week;
        this.opening_time = opening_time;
        this.closing_time = closing_time;
        this.creation_date = Utils.getOffsetDateTimeNow();
        this.creation_id = "API - OpeningHours - Constructor";
        this.update_date = Utils.getOffsetDateTimeNow();
        this.update_id = "API - OpeningHours - Constructor";
    }

    @Override
    public String toString() {
        return "Opening_Hours [id=" + id + ", day_of_week=" + day_of_week + ", opening_time=" + opening_time
                + ", closing_time=" + closing_time + ", creation_date=" + creation_date + ", creation_id=" + creation_id
                + ", update_date=" + update_date + ", update_id=" + update_id + "]";
    }
}
