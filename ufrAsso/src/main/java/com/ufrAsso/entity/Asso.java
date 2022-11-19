package com.ufrAsso.entity;

import java.sql.Blob;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinTable;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToMany;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonProperty;

/**
 * Asso entity.
 * 
 * @author Miroredge
 * @version 1.0
 */

@Entity
@Table(name = "ASO")
public class Asso {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "ROW_IDT")
    private long id;
    @Column(name = "NAM", nullable = false, length = 45)
    private String name;
    @Column(name = "LGO")
    private Blob logo;
    @Column(name = "SIR_NBR", nullable = false, length = 14)
    private String siret_number;
    @Column(name = "MBR_PCE", nullable = false)
    private double member_price;

    // n to m association with Event entity (JPA).
    @ManyToMany(targetEntity = Event.class, cascade = { CascadeType.PERSIST,
            CascadeType.MERGE }, fetch = FetchType.LAZY)
    @JoinTable(name = "ASO_HAS_EVT", joinColumns = @JoinColumn(name = "ASO_ROW_IDT", referencedColumnName = "ROW_IDT"), inverseJoinColumns = @JoinColumn(name = "EVT_ROW_IDT", referencedColumnName = "ROW_IDT"))
    private Set<Event> eventSet = new HashSet<Event>();

    // Getters with @JsonProperty("name").

    @JsonProperty("id")
    public long getId() {
        return id;
    }

    @JsonProperty("name")
    public String getName() {
        return name;
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

    // Setters without @JsonProperty("name").

    public void setId(long id) {
        this.id = id;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setLogo(Blob logo) {
        this.logo = logo;
    }

    public void setSiret_number(String siret_number) {
        this.siret_number = siret_number;
    }

    public void setMember_price(double member_price) {
        this.member_price = member_price;
    }

    // constructor
    public Asso() {
        super();
    }

    public Asso(long id, String name, Blob logo, String siret_number, double member_price) {
        super();
        this.id = id;
        this.name = name;
        this.logo = logo;
        this.siret_number = siret_number;
        this.member_price = member_price;
    }

    @Override
    public String toString() {
        return "Asso [id=" + id + ", name=" + name + ", logo=" + logo + ", siret_number=" + siret_number
                + ", member_price="
                + member_price + "]";
    }
}
