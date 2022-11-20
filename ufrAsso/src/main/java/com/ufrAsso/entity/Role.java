package com.ufrAsso.entity;

import java.time.OffsetDateTime;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.Size;

import com.fasterxml.jackson.annotation.JsonProperty;
import com.ufrAsso.functions.Utils;

/**
 * Role entity.
 * 
 * @author Miroredge
 * @version 1.0
 */

@Entity
@Table(name = "ROL")
public class Role {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "ROW_IDT")
    private long id;
    @Size(min = 1, max = 25)
    @Column(name = "NAM", nullable = false, length = 25, unique = true)
    private String name;
    @Column(name = "CRE_DAT", nullable = false)
    private OffsetDateTime creation_date;
    @Column(name = "CRE_ID", nullable = false)
    private String creation_id;
    @Column(name = "UPD_DAT", nullable = false)
    private OffsetDateTime update_date;
    @Column(name = "UPD_ID", nullable = false)
    private String update_id;

    // Getters with @JsonProperty("name").

    @JsonProperty("id")
    public long getId() {
        return id;
    }

    @JsonProperty("name")
    public String getName() {
        return name;
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
        this.update_id = "API - Role - Setters";
    }

    // constructor
    public Role() {
        super();
    }

    public Role(long id, String name) {
        super();
        this.id = id;
        this.name = name;
        this.creation_date = Utils.getOffsetDateTimeNow();
        this.creation_id = "API - Role - Constructor";
        this.update_date = Utils.getOffsetDateTimeNow();
        this.update_id = "API - Role - Constructor";
    }

    @Override
    public String toString() {
        return "Role [id=" + id + ", name=" + name + ", creation_date=" + creation_date + ", creation_id=" + creation_id
                + ", update_date=" + update_date + ", update_id=" + update_id + "]";
    }
}