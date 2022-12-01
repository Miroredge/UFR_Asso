package com.ufrAsso.entity;

import java.sql.Blob;
import java.time.OffsetDateTime;

import javax.persistence.Column;
import javax.persistence.Entity;

import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.UniqueConstraint;
import javax.validation.constraints.Min;
import javax.validation.constraints.Size;

import com.fasterxml.jackson.annotation.JsonProperty;
import com.ufrAsso.functions.Utils;

/**
 * Asso entity.
 * 
 * @author Miroredge
 * @version 1.0
 */

@Entity
@Table(name = "ASO", uniqueConstraints = { @UniqueConstraint(columnNames = { "SIR_NBR" }) })
public class Asso {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "ROW_IDT")
    private long id;
    @Size(min = 1, max = 45)
    @Column(name = "NAM", nullable = false, length = 45)
    private String name;
    @Column(name = "LOC", length = 45)
    private String location;
    @Column(name = "LGO")
    private Blob logo;
    @Size(min = 9, max = 14)
    @Column(name = "SIR_NBR", nullable = false, length = 14, unique = true)
    private String siret_number;
    @Min(0)
    @Column(name = "MBR_PCE", nullable = false)
    private double member_price;
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

    @JsonProperty("location")
    public String getLocation() {
        return location;
    }

    @JsonProperty("logo")
    public Blob getLogo() {
        return logo;
    }

    @JsonProperty("siret_number")
    public String getSiret_number() {
        return siret_number;
    }

    @JsonProperty("member_price")
    public double getMember_price() {
        return member_price;
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
        this.update_id = "API - Asso - Setters";
    }

    public void setLocation(String location) {
        this.location = location;
        this.update_date = Utils.getOffsetDateTimeNow();
        this.update_id = "API - Asso - Setters";
    }

    public void setLogo(Blob logo) {
        this.logo = logo;
        this.update_date = Utils.getOffsetDateTimeNow();
        this.update_id = "API - Asso - Setters";
    }

    public void setSiret_number(String siret_number) {
        this.siret_number = siret_number;
        this.update_date = Utils.getOffsetDateTimeNow();
        this.update_id = "API - Asso - Setters";
    }

    public void setMember_price(double member_price) {
        this.member_price = member_price;
        this.update_date = Utils.getOffsetDateTimeNow();
        this.update_id = "API - Asso - Setters";
    }

    // constructor
    public Asso() {
        super();
    }

    public Asso(long id, String name, String location, Blob logo, String siret_number, double member_price) {
        super();
        this.id = id;
        this.name = name;
        this.location = location;
        this.logo = logo;
        this.siret_number = siret_number;
        this.member_price = member_price;
        this.creation_date = Utils.getOffsetDateTimeNow();
        this.creation_id = "API - Asso - Constructor";
        this.update_date = Utils.getOffsetDateTimeNow();
        this.update_id = "API - Asso - Constructor";
    }

    @Override
    public String toString() {
        return "Asso [id=" + id + ", name=" + name + ", location=" + location + ", logo=" + logo + ", siret_number="
                + siret_number + ", member_price=" + member_price + ", creation_date=" + creation_date
                + ", creation_id=" + creation_id + ", update_date=" + update_date + ", update_id=" + update_id + "]";
    }
}
