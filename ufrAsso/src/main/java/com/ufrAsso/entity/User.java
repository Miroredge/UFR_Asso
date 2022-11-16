package com.ufrAsso.entity;

import java.sql.Blob;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonProperty;

@Entity
@Table(name = "USR")
public class User {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "ROW_IDT")
    private long id;
    @Column(name = "STU_NBR", unique = true, nullable = false)
    private String student_number;
    @Column(name = "PRF_PIC")
    private Blob profile_picture;
    @Column(name = "FST_NAM")
    private String first_name;
    @Column(name = "LST_NAM")
    private String last_name;
    @Column(name = "SEX")
    private String sex;
    @Column(name = "EML", nullable = false)
    private String email;
    @Column(name = "PHN_NBR")
    private String phone_number;
    @Column(name = "PHN_BOK")
    private int phone_book;
    @Column(name = "PWD", nullable = false)
    private String password;
    @Column(name = "TMP_PWD")
    private int temporary_password;
    @Column(name = "NTF")
    private int notification;

    // Getters with @JsonProperty("name").

    @JsonProperty("id")
    public long getId() {
        return id;
    }

    @JsonProperty("student_number")
    public String getStudent_number() {
        return student_number;
    }

    @JsonProperty("profile_picture")
    public Blob getProfile_picture() {
        return profile_picture;
    }

    @JsonProperty("first_name")
    public String getFirst_name() {
        return first_name;
    }

    @JsonProperty("last_name")
    public String getLast_name() {
        return last_name;
    }

    @JsonProperty("sex")
    public String getSex() {
        return sex;
    }

    @JsonProperty("email")
    public String getEmail() {
        return email;
    }

    @JsonProperty("phone_number")
    public String getPhone_number() {
        return phone_number;
    }

    @JsonProperty("phone_book")
    public int getPhone_book() {
        return phone_book;
    }

    @JsonProperty("password")
    public String getPassword() {
        return password;
    }

    @JsonProperty("temporary_password")
    public int getTemporary_password() {
        return temporary_password;
    }

    @JsonProperty("notification")
    public int getNotification() {
        return notification;
    }

    // Setters without @JsonProperty("name").
    public void setId(long id) {
        this.id = id;
    }

    public void setStudent_number(String student_number) {
        this.student_number = student_number;
    }

    public void setProfile_picture(Blob profile_picture) {
        this.profile_picture = profile_picture;
    }

    public void setFirst_name(String first_name) {
        this.first_name = first_name;
    }

    public void setLast_name(String last_name) {
        this.last_name = last_name;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void setPhone_number(String phone_number) {
        this.phone_number = phone_number;
    }

    public void setPhone_book(int phone_book) {
        this.phone_book = phone_book;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public void setTemporary_password(int temporary_password) {
        this.temporary_password = temporary_password;
    }

    public void setNotification(int notification) {
        this.notification = notification;
    }

    // Constructors.
    public User() {
        super();
    }

    public User(long id, String student_number, Blob profile_picture, String first_name, String last_name, String sex,
            String email, String phone_number, int phone_book, String password,
            int notification) {
        super();
        this.id = id;
        this.student_number = student_number;
        this.profile_picture = profile_picture;
        this.first_name = first_name;
        this.last_name = last_name;
        this.sex = sex;
        this.email = email;
        this.phone_number = phone_number;
        this.phone_book = phone_book;
        this.password = password;
        this.temporary_password = 0;
        this.notification = notification;
    }

    @Override
    public String toString() {
        return "User [id=" + id + ", student_number=" + student_number + ", profile_picture=" + profile_picture
                + ", first_name=" + first_name + ", last_name=" + last_name + ", sex=" + sex + ", email=" + email
                + ", phone_number=" + phone_number + ", phone_book=" + phone_book + ", password=" + password
                + ", temporary_password=" + temporary_password + ", notification=" + notification + "]";
    }

}