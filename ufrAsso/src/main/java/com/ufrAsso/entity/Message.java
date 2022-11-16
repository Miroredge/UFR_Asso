package com.ufrAsso.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonProperty;

@Entity
@Table(name = "MSG")
public class Message {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "ROW_IDT")
    private long id;
    @Column(name = "NAM", nullable = false)
    private String name;
    @Column(name = "CRA_DAT", nullable = false)
    private String creation_date;
    @Column(name = "CNT", nullable = false)
    private String content;

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
    public String getCreation_date() {
        return creation_date;
    }

    @JsonProperty("content")
    public String getContent() {
        return content;
    }

    // Setters without @JsonProperty("name").
    public void setId(long id) {
        this.id = id;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setCreation_date(String creation_date) {
        this.creation_date = creation_date;
    }

    public void setContent(String content) {
        this.content = content;
    }

    // Constructors.
    public Message() {
        super();
    }

    public Message(long id, String name, String creation_date, String content) {
        super();
        this.id = id;
        this.name = name;
        this.creation_date = creation_date;
        this.content = content;
    }

    @Override
    public String toString() {
        return "Message [id=" + id + ", name=" + name + ", creation_date=" + creation_date + ", content=" + content
                + "]";
    }

}
