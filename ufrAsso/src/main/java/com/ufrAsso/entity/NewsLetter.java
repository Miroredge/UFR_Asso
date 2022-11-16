package com.ufrAsso.entity;

import java.time.LocalDateTime;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonProperty;

@Entity
@Table(name = "NWS_LTR")
public class NewsLetter {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "ROW_IDT")
    private long id;
    @Column(name = "NAM", nullable = false, length = 45)
    private String name;
    @Column(name = "CRA_DAT", nullable = false)
    private LocalDateTime creation_date;
    @Column(name = "TXT", nullable = false)
    private String text;
    @Column(name = "DSC", nullable = false)
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

    @JsonProperty("creation_date")
    public LocalDateTime getCreation_date() {
        return creation_date;
    }

    @JsonProperty("text")
    public String getText() {
        return text;
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

    public void setCreation_date(LocalDateTime creation_date) {
        this.creation_date = creation_date;
    }

    public void setText(String text) {
        this.text = text;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    // constructor
    public NewsLetter() {
        super();
    }

    public NewsLetter(long id, String name, LocalDateTime creation_date, String text, String description) {
        super();
        this.id = id;
        this.name = name;
        this.creation_date = creation_date;
        this.text = text;
        this.description = description;
    }

    @Override
    public String toString() {
        return "NewsLetter [id=" + id + ", name=" + name + ", creation_date=" + creation_date + ", text=" + text
                + ", description=" + description + "]";
    }

}
