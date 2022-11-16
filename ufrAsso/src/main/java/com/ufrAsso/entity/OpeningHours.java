package com.ufrAsso.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonProperty;

@Entity
@Table(name = "OPN_HRS")
public class OpeningHours {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "ROW_IDT")
    private long id;
    @Column(name = "DAY_WEK", nullable = false)
    private String day_of_week;
    @Column(name = "OPN", nullable = false)
    private String opening_time;
    @Column(name = "CLO", nullable = false)
    private String closing_time;

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
    public String getOpening_time() {
        return opening_time;
    }

    @JsonProperty("closing_time")
    public String getClosing_time() {
        return closing_time;
    }

    // Setters without @JsonProperty("name").

    public void setId(long id) {
        this.id = id;
    }

    public void setDay_of_week(String day_of_week) {
        this.day_of_week = day_of_week;
    }

    public void setOpening_time(String opening_time) {
        this.opening_time = opening_time;
    }

    public void setClosing_time(String closing_time) {
        this.closing_time = closing_time;
    }

    // constructor

    public OpeningHours() {
        super();
    }

    public OpeningHours(long id, String day_of_week, String opening_time, String closing_time) {
        super();
        this.id = id;
        this.day_of_week = day_of_week;
        this.opening_time = opening_time;
        this.closing_time = closing_time;
    }

    @Override
    public String toString() {
        return "Opening_Hours [id=" + id + ", day_of_week=" + day_of_week + ", opening_time=" + opening_time
                + ", closing_time=" + closing_time + "]";
    }
}
