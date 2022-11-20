package com.ufrAsso.entity;

import java.sql.Date;
import java.time.OffsetDateTime;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.validation.constraints.Size;

import com.fasterxml.jackson.annotation.JsonProperty;
import com.ufrAsso.constants.OperationMeans;
import com.ufrAsso.functions.Utils;

/**
 * Budget entity.
 * 
 * @author Miroredge
 * @version 1.0
 */

@Entity
@Table(name = "BDG")
public class Budget {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "ROW_IDT")
    private long id;
    @Column(name = "OPT_DAT", nullable = false)
    private Date operation_date;
    @Column(name = "MNS", nullable = false, columnDefinition = "ENUM('CASH', 'CHECK', 'BANK_TRANSFER', 'CREDIT_CARD', 'DEBIT_CARD', 'PAYPAL', 'BITCOIN', 'OTHER')")
    @Enumerated(EnumType.STRING)
    private OperationMeans mean;
    @Size(min = 1, max = 255)
    @Column(name = "NAM", nullable = false)
    private String name;
    @Column(name = "AMT", nullable = false)
    private double amount;
    @Column(name = "CRE_DAT", nullable = false)
    private OffsetDateTime creation_date;
    @Column(name = "CRE_ID", nullable = false)
    private String creation_id;
    @Column(name = "UPD_DAT", nullable = false)
    private OffsetDateTime update_date;
    @Column(name = "UPD_ID", nullable = false)
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

    @JsonProperty("operation_date")
    public Date getOperation_date() {
        return operation_date;
    }

    @JsonProperty("mean")
    public OperationMeans getMean() {
        return mean;
    }

    @JsonProperty("name")
    public String getName() {
        return name;
    }

    @JsonProperty("amount")
    public double getAmount() {
        return amount;
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

    public void setOperation_date(Date operation_date) {
        this.operation_date = operation_date;
        this.update_date = Utils.getOffsetDateTimeNow();
        this.update_id = "API - Budget - Setters";
    }

    public void setMean(OperationMeans mean) {
        this.mean = mean;
        this.update_date = Utils.getOffsetDateTimeNow();
        this.update_id = "API - Budget - Setters";
    }

    public void setName(String name) {
        this.name = name;
        this.update_date = Utils.getOffsetDateTimeNow();
        this.update_id = "API - Budget - Setters";
    }

    public void setAmount(double amount) {
        this.amount = amount;
        this.update_date = Utils.getOffsetDateTimeNow();
        this.update_id = "API - Budget - Setters";
    }

    // constructor

    public Budget() {
        super();
    }

    public Budget(long id, Date operation_date, OperationMeans mean, String name,
            double amount) {
        super();
        this.id = id;
        this.operation_date = operation_date;
        this.mean = mean;
        this.name = name;
        this.amount = amount;
        this.creation_date = Utils.getOffsetDateTimeNow();
        this.creation_id = "API - Budget - Constructor";
        this.update_date = Utils.getOffsetDateTimeNow();
        this.update_id = "API - Budget - Constructor";
    }

    // toString
    @Override
    public String toString() {
        return "Budget [id=" + id + ", operation_date=" + operation_date + ", mean=" + mean
                + ", name=" + name + ", amount=" + amount + ", asso=" + asso + ", creation_date=" + creation_date
                + ", creation_id=" + creation_id + ", update_date=" + update_date + ", update_id=" + update_id + "]";
    }
}
