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
import javax.persistence.Query;
import javax.persistence.Table;
import javax.persistence.UniqueConstraint;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityManager;
import javax.persistence.Persistence;
import javax.validation.constraints.Size;

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
@Table(name = "USR", uniqueConstraints = { @UniqueConstraint(name = "UK_USR_1", columnNames = { "STU_NBR" }),
        @UniqueConstraint(name = "UK_USR_2", columnNames = { "FST_NAM", "LST_NAM", "EML" }) })
public class User {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "ROW_IDT")
    private long id;
    @Column(name = "USR_ID", nullable = false, length = 8)
    private String user_id;
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

    // create a unique key (student_number, )

    // TODO 0 to n associations with Asso entity. (JPA)
    // @ManyToMany(targetEntity = Asso.class, cascade = { CascadeType.PERSIST,
    // CascadeType.MERGE })
    // @JoinTable(name = "USR_HAS_ASO", joinColumns = @JoinColumn(name =
    // "USR_ROW_IDT", referencedColumnName = "ROW_IDT"), inverseJoinColumns =
    // @JoinColumn(name = "ASO_ROW_IDT", referencedColumnName = "ROW_IDT"))
    // private Set<Asso> assoSet = new HashSet<Asso>();

    // // 0 to n associations with Role entity. (JPA)
    // @ManyToMany(targetEntity = Role.class, cascade = { CascadeType.PERSIST,
    // CascadeType.MERGE })
    // @JoinTable(name = "USR_HAS_ROL", joinColumns = @JoinColumn(name =
    // "USR_ROW_IDT", referencedColumnName = "ROW_IDT"), inverseJoinColumns =
    // @JoinColumn(name = "ROL_ROW_IDT", referencedColumnName = "ROW_IDT"))
    // private Set<Role> roleSet = new HashSet<Role>();

    // Getters with @JsonProperty("name")

    @JsonProperty("id")
    public long getId() {
        return id;
    }

    @JsonProperty("user_id")
    public String getUser_id() {
        return user_id;
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

    @JsonProperty("gender")
    public GenderType getGender() {
        return gender;
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
    public Boolean getPhone_book() {
        return phone_book;
    }

    @JsonProperty("password")
    public String getPassword() {
        return password;
    }

    @JsonProperty("temporary_password")
    public Boolean getTemporary_password() {
        return temporary_password;
    }

    @JsonProperty("notification")
    public Boolean getNotification() {
        return notification;
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

    // Setters without @JsonProperty("name")

    public void setId(long id) {
        this.id = id;
    }

    public void setUser_id(String user_id) {
        this.user_id = user_id;
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

    // next max user id in database (Base 36) with JPA query
    public static String getNextUserId() {
        EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory("persistence");
        EntityManager em = entityManagerFactory.createEntityManager();
        String nextUserId = null;
        try {
            Query q = em.createNativeQuery("SELECT MAX(USR_ID) FROM USR");
            nextUserId = (String) q.getSingleResult();
            if (nextUserId == null) {
                nextUserId = "0";
            }
            nextUserId = Long.toString(Long.parseLong(nextUserId, 36) + 1, 36);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            em.close();
        }
        return nextUserId;
    }

    // Constructors

    public User() {
    }

    public User(long id, String student_number, Blob profile_picture, String first_name, String last_name,
            GenderType gender, String email, String phone_number, Boolean phone_book, String password,
            Boolean temporary_password, Boolean notification) {
        this.id = id;
        this.user_id = getNextUserId();
        this.profile_picture = profile_picture;
        this.first_name = first_name;
        this.last_name = last_name;
        this.gender = gender;
        this.email = email;
        this.phone_number = phone_number;
        this.phone_book = phone_book;
        this.password = password;
        this.temporary_password = temporary_password;
        this.notification = notification;
        this.update_date = Utils.getOffsetDateTimeNow();
        this.creation_id = "API - User - Constructor";
        this.update_date = Utils.getOffsetDateTimeNow();
        this.update_id = "API - User - Constructor";
    }

    @Override
    public String toString() {
        return "User [id=" + id + ", user_id=" + user_id + ", student_number=" + student_number + ", profile_picture="
                + profile_picture + ", first_name=" + first_name + ", last_name=" + last_name + ", gender=" + gender
                + ", email=" + email + ", phone_number=" + phone_number + ", phone_book=" + phone_book + ", password="
                + password + ", temporary_password=" + temporary_password + ", notification=" + notification
                + ", creation_date=" + creation_date + ", creation_id=" + creation_id + ", update_date=" + update_date
                + ", update_id=" + update_id + "]";
    }

}
