package com.ufrAsso.entity;

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
 * AssoHasEvent link entity.
 * 
 * @author Miroredge
 * @version 1.0
 */

@Entity
@Table(name = "ASO_HAS_EVT")
public class AssoHasEvent {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "ROW_IDT")
    private long id;
    @ManyToOne()
    @JoinColumn(name = "ASO_ROW_IDT", nullable = false)
    private Asso asso;
    @ManyToOne()
    @JoinColumn(name = "EVT_ROW_IDT", nullable = false)
    private Event event;
    @Column(name = "CRE_DAT")
    private OffsetDateTime creation_date;
    @Column(name = "CRE_ID")
    private String creation_id;
    @Column(name = "UPD_DAT")
    private OffsetDateTime update_date;
    @Column(name = "UPD_ID")
    private String update_id;

    // Getters with @JsonProperty("name").

    @JsonProperty("asso")
    public Asso getAsso() {
        return asso;
    }

    @JsonProperty("event")
    public Event getEvent() {
        return event;
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

    public void setAsso(Asso asso) {
        this.asso = asso;
        this.update_date = Utils.getOffsetDateTimeNow();
        this.update_id = "API - AssoHasEvent - Setters";
    }

    public void setEvent(Event event) {
        this.event = event;
        this.update_date = Utils.getOffsetDateTimeNow();
        this.update_id = "API - AssoHasEvent - Setters";

    }

    // constructor

    public AssoHasEvent() {
        super();
    }

    public AssoHasEvent(Asso asso, Event event) {
        super();
        this.asso = asso;
        this.event = event;
        this.creation_date = Utils.getOffsetDateTimeNow();
        this.creation_id = "API - AssoHasEvent - Constructor";
        this.update_date = Utils.getOffsetDateTimeNow();
        this.update_id = "API - AssoHasEvent - Constructor";
    }

    // toString()
    @Override
    public String toString() {
        return "AssoHasEvent [asso=" + asso + ", event=" + event + ", creation_date=" + creation_date + ", creation_id="
                + creation_id + ", update_date=" + update_date + ", update_id=" + update_id + "]";
    }

}