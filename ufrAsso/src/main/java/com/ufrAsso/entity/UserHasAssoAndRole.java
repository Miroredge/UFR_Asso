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
@Table(name = "USR_HAS_ASO_AND_ROL")
public class UserHasAssoAndRole {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "ROW_IDT")
    private long id;
    @ManyToOne()
    @JoinColumn(name = "USR_ROW_IDT", nullable = false)
    private User user;
    @ManyToOne()
    @JoinColumn(name = "ASO_ROW_IDT", nullable = true)
    private Asso asso;
    @ManyToOne()
    @JoinColumn(name = "ROL_ROW_IDT", nullable = false)
    private Role role;
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

    @JsonProperty("asso")
    public Asso getAsso() {
        return asso;
    }

    @JsonProperty("role")
    public Role getRole() {
        return role;
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
        this.update_id = "API - User - Setters";
    }

    public void setAsso(Asso asso) {
        this.asso = asso;
        this.update_date = Utils.getOffsetDateTimeNow();
        this.update_id = "API - User - Setters";
    }

    public void setRole(Role role) {
        this.role = role;
        this.update_date = Utils.getOffsetDateTimeNow();
        this.update_id = "API - User - Setters";
    }

    // Constructors.

    public UserHasAssoAndRole() {
    }

    public UserHasAssoAndRole(User user, Asso asso, Role role) {
        this.user = user;
        this.asso = asso;
        this.role = role;
        this.creation_date = Utils.getOffsetDateTimeNow();
        this.creation_id = "API - UserHasAssoAndRole - Constructor";
        this.update_date = Utils.getOffsetDateTimeNow();
        this.update_id = "API - UserHasAssoAndRole - Constructor";
    }

    // toString().
    @Override
    public String toString() {
        return "UserHasAssoAndRole [user=" + user + ", asso=" + asso + ", role=" + role + ", creation_date="
                + creation_date + ", creation_id=" + creation_id + ", update_date=" + update_date + ", update_id="
                + update_id + "]";
    }
}