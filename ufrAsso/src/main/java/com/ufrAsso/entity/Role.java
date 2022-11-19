package com.ufrAsso.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonProperty;

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
    @Column(name = "NAM", nullable = false, length = 25)
    private String name;
    @Column(name = "RGT", nullable = false)
    private int right;

    // Getters with @JsonProperty("name").

    @JsonProperty("id")
    public long getId() {
        return id;
    }

    @JsonProperty("name")
    public String getName() {
        return name;
    }

    @JsonProperty("right")
    public int getRight() {
        return right;
    }

    // Setters without @JsonProperty("name").
    public void setId(long id) {
        this.id = id;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setRight(int right) {
        this.right = right;
    }

    // constructor
    public Role() {
        super();
    }

    public Role(long id, String name, int right) {
        super();
        this.id = id;
        this.name = name;
        this.right = right;
    }

    @Override
    public String toString() {
        return "Role [id=" + id + ", name=" + name + ", right=" + right + "]";
    }
}