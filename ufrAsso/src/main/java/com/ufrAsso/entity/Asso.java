package com.ufrAsso.entity;

import java.sql.Blob;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonProperty;

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

    // @OneToOne(mappedBy = "aso", targetEntity = NewsLetter.class, optional = true,
    // cascade = { CascadeType.REMOVE })
    // private NewsLetter newsLetter; FIXME

    // @OneToOne(mappedBy = "aso", targetEntity = OpeningHours.class, optional =
    // true, cascade = { CascadeType.REMOVE })
    // private OpeningHours openingHours; FIXME

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
