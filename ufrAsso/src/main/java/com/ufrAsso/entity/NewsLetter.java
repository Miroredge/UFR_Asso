package com.ufrAsso.entity;

import java.time.LocalDateTime;
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
 * NewsLetter entity.
 * 
 * @author Miroredge
 * @version 1.0
 */

@Entity
@Table(name = "NWS_LTR")
public class NewsLetter {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "ROW_IDT")
    private long id;
    @Column(name = "NAM", nullable = false, length = 45)
    private String name;
    @Column(name = "TXT", nullable = false)
    private String text;
    @Column(name = "DSC", nullable = false)
    private String description;
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

    @JsonProperty("name")
    public String getName() {
        return name;
    }

    @JsonProperty("text")
    public String getText() {
        return text;
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
        this.update_id = "API - NewsLetter - Setters";
    }

    public void setText(String text) {
        this.text = text;
        this.update_date = Utils.getOffsetDateTimeNow();
        this.update_id = "API - NewsLetter - Setters";
    }

    public void setDescription(String description) {
        this.description = description;
        this.update_date = Utils.getOffsetDateTimeNow();
        this.update_id = "API - NewsLetter - Setters";
    }

    // constructor
    public NewsLetter() {
        super();
    }

    public NewsLetter(long id, String name, LocalDateTime creation_date, String text, String description) {
        super();
        this.id = id;
        this.name = name;
        this.text = text;
        this.description = description;
        this.creation_date = Utils.getOffsetDateTimeNow();
        this.creation_id = "API - NewsLetter - Constructor";
        this.update_date = Utils.getOffsetDateTimeNow();
        this.update_id = "API - NewsLetter - Constructor";
    }

    @Override
    public String toString() {
        return "NewsLetter [id=" + id + ", name=" + name + ", creation_date=" + creation_date + ", text=" + text
                + ", description=" + description + ", asso=" + asso + ", creation_id=" + creation_id + ", update_date="
                + update_date + ", update_id=" + update_id + "]";
    }
}
