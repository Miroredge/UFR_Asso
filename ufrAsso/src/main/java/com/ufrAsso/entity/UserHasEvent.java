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
 * UserHasAssoAndRole link entity.
 * 
 * @author Miroredge
 * @version 1.0
 */

@Entity
@Table(name = "USR_HAS_EVT")
public class UserHasEvent {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "ROW_IDT")
    private long id;
    @ManyToOne()
    @JoinColumn(name = "USR_ROW_IDT", nullable = false)
    private User user;
    @ManyToOne()
    @JoinColumn(name = "EVT_ROW_IDT", nullable = false)
    private Event event;
    @Column(name = "CRE_DAT", nullable = false)
    private OffsetDateTime creation_date;
    @Column(name = "CRE_ID", nullable = false)
    private String creation_id;
    @Column(name = "UPD_DAT", nullable = false)
    private OffsetDateTime update_date;
    @Column(name = "UPD_ID", nullable = false)
    private String update_id;

    // Getters with @JsonProperty("name").

    @JsonProperty("user")
    public User getUser() {
        return user;
    }

    @JsonProperty("event")
    public Event getEvent() {
        return event;
    }

    @JsonProperty("creation_date")
    public OffsetDateTime getCreation_date() {
        return creation_date;
    }

    @JsonProperty("creation_id")
    public String getCreation_id() {
        return creation_id;
    }

    @JsonProperty("update_date")
    public OffsetDateTime getUpdate_date() {
        return update_date;
    }

    @JsonProperty("update_id")
    public String getUpdate_id() {
        return update_id;
    }

    // Setters without @JsonProperty("name").

    public void setUser(User user) {
        this.user = user;
        this.update_date = Utils.getOffsetDateTimeNow();
        this.update_id = "API - UserHasEvents - Setters";
    }

    public void setEvent(Event event) {
        this.event = event;
        this.update_date = Utils.getOffsetDateTimeNow();
        this.update_id = "API - UserHasEvents - Setters";
    }

    // Constructors.
    UserHasEvent() {
    }

    public UserHasEvent(User user, Event event) {
        this.user = user;
        this.event = event;
        this.creation_date = Utils.getOffsetDateTimeNow();
        this.creation_id = "API - UserHasEvents - Constructors";
        this.update_date = Utils.getOffsetDateTimeNow();
        this.update_id = "API - UserHasEvents - Constructors";
    }

    // toString() method.
    @Override
    public String toString() {
        return "UserHasEvents [id=" + id + ", user=" + user + ", event=" + event + ", creation_date=" + creation_date
                + ", creation_id=" + creation_id + ", update_date=" + update_date + ", update_id=" + update_id + "]";
    }

}
