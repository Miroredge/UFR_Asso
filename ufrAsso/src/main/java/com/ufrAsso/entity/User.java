package com.ufrAsso.entity;

import java.sql.Blob;
import java.time.OffsetDateTime;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.Table;
import javax.persistence.UniqueConstraint;
import javax.validation.constraints.Size;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.ufrAsso.constants.GenderType;
import com.ufrAsso.functions.Utils;

/**
 * Asso entity.
 * 
 * @author Miroredge
 * @version 1.0
 */

@Entity
@Table(name = "USR", uniqueConstraints = { @UniqueConstraint(name = "UK_USR_2_IDX", columnNames = { "STU_NBR" }),
        @UniqueConstraint(name = "UK_USR_1_IDX", columnNames = { "FST_NAM", "LST_NAM", "EML" }),
        @UniqueConstraint(name = "UK_USR_3_IDX", columnNames = { "PSD" }) })
public class User {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "ROW_IDT")
    private long id;
    @Size(min = 5, max = 50)
    @Column(name = "PSD", nullable = false, length = 50, unique = true)
    private String pseudo;
    @Size(min = 8, max = 10)
    @Column(name = "STU_NBR", nullable = true, length = 10)
    private String student_number;
    @Lob
    @Column(name = "PRF_PIC")
    private Blob profile_picture;
    @Size(min = 1, max = 20)
    @Column(name = "FST_NAM", length = 20, nullable = false)
    @Size(min = 1, max = 25)
    private String first_name;
    @Column(name = "LST_NAM", length = 25, nullable = false)
    private String last_name;
    @Column(name = "GDR", columnDefinition = "ENUM('M', 'F', 'O')")
    @Enumerated(EnumType.STRING)
    private GenderType gender;
    @Size(min = 1, max = 255)
    @Column(name = "EML", nullable = false)
    private String email;
    @Size(min = 5, max = 15)
    @Column(name = "PHN_NBR", length = 15)
    private String phone_number;
    @Column(name = "PHN_BOK", nullable = false)
    private Boolean phone_book;
    @Size(min = 64, max = 64)
    @Column(name = "PWD", nullable = false, length = 64)
    private String password;
    @Column(name = "TMP_PWD", nullable = false)
    private Boolean temporary_password;
    @Column(name = "NTF", nullable = false)
    private Boolean notification;
    @Column(name = "CRE_DAT", nullable = false)
    private OffsetDateTime creation_date;
    @Column(name = "CRE_ID", length = 45, nullable = false)
    private String creation_id;
    @Column(name = "UPD_DAT", nullable = false)
    private OffsetDateTime update_date;
    @Column(name = "UPD_ID", nullable = false)
    private String update_id;

    // @JsonProperty("rowId")
    public long getId() {
        return id;
    }

    @JsonProperty("pseudo")
    public String getPseudo() {
        return pseudo;
    }

    @JsonProperty("studentNumber")
    public String getStudent_number() {
        return student_number;
    }

    @JsonProperty("profilePicture")
    public Blob getProfile_picture() {
        return profile_picture;
    }

    @JsonProperty("firstName")
    public String getFirst_name() {
        return first_name;
    }

    @JsonProperty("lastName")
    public String getLast_name() {
        return last_name;
    }

    @JsonProperty("gender")
    public GenderType getGender() {
        return gender;
    }

    @JsonProperty("email")
    public String getEmail() {
        return email;
    }

    @JsonProperty("phoneNumber")
    public String getPhone_number() {
        return phone_number;
    }

    @JsonProperty("phoneBook")
    public Boolean getPhone_book() {
        return phone_book;
    }

    @JsonProperty("password")
    public String getPassword() {
        return password;
    }

    @JsonProperty("temporaryPassword")
    public Boolean getTemporary_password() {
        return temporary_password;
    }

    @JsonProperty("notification")
    public Boolean getNotification() {
        return notification;
    }

    @JsonProperty("creationDate")
    public OffsetDateTime getCreation_date() {
        return creation_date;
    }

    @JsonProperty("creationId")
    public String getCreation_id() {
        return creation_id;
    }

    @JsonProperty("updateDate")
    public OffsetDateTime getUpdate_date() {
        return update_date;
    }

    @JsonProperty("updateId")
    public String getUpdate_id() {
        return update_id;
    }

    // Setters without @JsonProperty("name")

    public void setId(long id) {
        this.id = id;
    }

    public void setPseudo(String pseudo) {
        this.pseudo = pseudo;
    }

    public void setStudent_number(String student_number) {
        this.student_number = student_number;
        this.update_date = Utils.getOffsetDateTimeNow();
        this.update_id = "API - User - Setters";
    }

    public void setProfile_picture(Blob profile_picture) {
        this.profile_picture = profile_picture;
        this.update_date = Utils.getOffsetDateTimeNow();
        this.update_id = "API - User - Setters";
    }

    public void setFirst_name(String first_name) {
        this.first_name = first_name;
        this.update_date = Utils.getOffsetDateTimeNow();
        this.update_id = "API - User - Setters";
    }

    public void setLast_name(String last_name) {
        this.last_name = last_name;
        this.update_date = Utils.getOffsetDateTimeNow();
        this.update_id = "API - User - Setters";
    }

    public void setGender(GenderType gender) {
        this.gender = gender;
        this.update_date = Utils.getOffsetDateTimeNow();
        this.update_id = "API - User - Setters";
    }

    public void setEmail(String email) {
        this.email = email;
        this.update_date = Utils.getOffsetDateTimeNow();
        this.update_id = "API - User - Setters";
    }

    public void setPhone_number(String phone_number) {
        this.phone_number = phone_number;
        this.update_date = Utils.getOffsetDateTimeNow();
        this.update_id = "API - User - Setters";
    }

    public void setPhone_book(Boolean phone_book) {
        this.phone_book = phone_book;
        this.update_date = Utils.getOffsetDateTimeNow();
        this.update_id = "API - User - Setters";
    }

    public void setPassword(String password) {
        this.password = password;
        this.update_date = Utils.getOffsetDateTimeNow();
        this.update_id = "API - User - Setters";
    }

    public void setTemporary_password(Boolean temporary_password) {
        this.temporary_password = temporary_password;
        this.update_date = Utils.getOffsetDateTimeNow();
        this.update_id = "API - User - Setters";
    }

    public void setNotification(Boolean notification) {
        this.notification = notification;
        this.update_date = Utils.getOffsetDateTimeNow();
        this.update_id = "API - User - Setters";
    }

    public void setCreation_date() {
        this.creation_date = Utils.getOffsetDateTimeNow();
    }

    public void setCreation_id(String creation_id) {
        this.creation_id = creation_id;
    }

    // Constructors

    public User() {
    }

    @JsonCreator
    public User(long id, String pseudo, String student_number, Blob profile_picture, String first_name,
            String last_name, GenderType gender, String email, String phone_number, Boolean phone_book, String password,
            Boolean notification) {
        this.id = id;
        this.pseudo = pseudo;
        this.student_number = student_number;
        this.profile_picture = profile_picture;
        this.first_name = first_name;
        this.last_name = last_name;
        this.gender = gender;
        this.email = email;
        this.phone_number = phone_number;
        this.phone_book = phone_book;
        this.password = password;
        this.temporary_password = false;
        this.notification = notification;
        this.creation_date = Utils.getOffsetDateTimeNow();
        this.creation_id = "API - User - Constructor";
        this.update_date = Utils.getOffsetDateTimeNow();
        this.update_id = "API - User - Constructor";
    }

    // To String with the camelCase names
    @Override
    public String toString() {
        return "User [id=" + id + ", pseudo=" + pseudo + ", studentNumber=" + student_number + ", profilePicture="
                + profile_picture + ", firstName=" + first_name + ", lastName=" + last_name + ", gender=" + gender
                + ", email=" + email + ", phoneNumber=" + phone_number + ", phoneBook=" + phone_book + ", password="
                + password + ", temporaryPassword=" + temporary_password + ", notification=" + notification
                + ", creationDate=" + creation_date + ", creationId=" + creation_id + ", updateDate=" + update_date
                + ", updateId=" + update_id + "]";
    }

}
