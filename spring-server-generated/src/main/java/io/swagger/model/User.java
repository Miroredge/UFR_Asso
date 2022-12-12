package io.swagger.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import io.swagger.model.Gender;
import io.swagger.model.GlobalRoleType;
import io.swagger.v3.oas.annotations.media.Schema;
import java.util.ArrayList;
import java.util.List;
import org.springframework.validation.annotation.Validated;
import javax.validation.Valid;
import javax.validation.constraints.*;

/**
 * Details associated to a User (Pseudo/Alias, Picture, Phone number, ...)
 */
@Schema(description = "Details associated to a User (Pseudo/Alias, Picture, Phone number, ...)")
@Validated
@javax.annotation.Generated(value = "io.swagger.codegen.v3.generators.java.SpringCodegen", date = "2022-12-12T07:32:15.929Z[GMT]")


public class User   {
  @JsonProperty("pseudo")
  private String pseudo = null;

  @JsonProperty("studentNumber")
  private String studentNumber = null;

  @JsonProperty("firstName")
  private String firstName = null;

  @JsonProperty("lastName")
  private String lastName = null;

  @JsonProperty("gender")
  private Gender gender = null;

  @JsonProperty("profilePic")
  private byte[] profilePic = null;

  @JsonProperty("email")
  private String email = null;

  @JsonProperty("phoneNumber")
  private String phoneNumber = null;

  @JsonProperty("phoneBook")
  private Boolean phoneBook = null;

  @JsonProperty("notifications")
  private Boolean notifications = null;

  @JsonProperty("globalRoles")
  @Valid
  private List<GlobalRoleType> globalRoles = null;

  public User pseudo(String pseudo) {
    this.pseudo = pseudo;
    return this;
  }

  /**
   * Unique ID of the User, as given by the user
   * @return pseudo
   **/
  @Schema(example = "MirorEdge38", required = true, description = "Unique ID of the User, as given by the user")
      @NotNull

  @Size(min=5,max=50)   public String getPseudo() {
    return pseudo;
  }

  public void setPseudo(String pseudo) {
    this.pseudo = pseudo;
  }

  public User studentNumber(String studentNumber) {
    this.studentNumber = studentNumber;
    return this;
  }

  /**
   * Unique ID of the User as given by the University
   * @return studentNumber
   **/
  @Schema(example = "22101185", description = "Unique ID of the User as given by the University")
  
  @Size(min=1,max=10)   public String getStudentNumber() {
    return studentNumber;
  }

  public void setStudentNumber(String studentNumber) {
    this.studentNumber = studentNumber;
  }

  public User firstName(String firstName) {
    this.firstName = firstName;
    return this;
  }

  /**
   * First name of the User
   * @return firstName
   **/
  @Schema(example = "John", required = true, description = "First name of the User")
      @NotNull

  @Size(min=1,max=20)   public String getFirstName() {
    return firstName;
  }

  public void setFirstName(String firstName) {
    this.firstName = firstName;
  }

  public User lastName(String lastName) {
    this.lastName = lastName;
    return this;
  }

  /**
   * Last name of the User
   * @return lastName
   **/
  @Schema(example = "DOE", required = true, description = "Last name of the User")
      @NotNull

  @Size(min=1,max=25)   public String getLastName() {
    return lastName;
  }

  public void setLastName(String lastName) {
    this.lastName = lastName;
  }

  public User gender(Gender gender) {
    this.gender = gender;
    return this;
  }

  /**
   * Get gender
   * @return gender
   **/
  @Schema(description = "")
  
    @Valid
    public Gender getGender() {
    return gender;
  }

  public void setGender(Gender gender) {
    this.gender = gender;
  }

  public User profilePic(byte[] profilePic) {
    this.profilePic = profilePic;
    return this;
  }

  /**
   * Picture on the user profile
   * @return profilePic
   **/
  @Schema(example = "[B@4538a030", description = "Picture on the user profile")
  
    public byte[] getProfilePic() {
    return profilePic;
  }

  public void setProfilePic(byte[] profilePic) {
    this.profilePic = profilePic;
  }

  public User email(String email) {
    this.email = email;
    return this;
  }

  /**
   * Picture on the user profile
   * @return email
   **/
  @Schema(example = "darth.vader@etu.univ-stours.fr", required = true, description = "Picture on the user profile")
      @NotNull

    public String getEmail() {
    return email;
  }

  public void setEmail(String email) {
    this.email = email;
  }

  public User phoneNumber(String phoneNumber) {
    this.phoneNumber = phoneNumber;
    return this;
  }

  /**
   * Phone number of the user
   * @return phoneNumber
   **/
  @Schema(example = "+33605024878", description = "Phone number of the user")
  
    public String getPhoneNumber() {
    return phoneNumber;
  }

  public void setPhoneNumber(String phoneNumber) {
    this.phoneNumber = phoneNumber;
  }

  public User phoneBook(Boolean phoneBook) {
    this.phoneBook = phoneBook;
    return this;
  }

  /**
   * true, if the user accepts to be visible for other users
   * @return phoneBook
   **/
  @Schema(example = "false", required = true, description = "true, if the user accepts to be visible for other users")
      @NotNull

    public Boolean isPhoneBook() {
    return phoneBook;
  }

  public void setPhoneBook(Boolean phoneBook) {
    this.phoneBook = phoneBook;
  }

  public User notifications(Boolean notifications) {
    this.notifications = notifications;
    return this;
  }

  /**
   * true, if the users accepts to receive the notification on his phone
   * @return notifications
   **/
  @Schema(example = "true", required = true, description = "true, if the users accepts to receive the notification on his phone")
      @NotNull

    public Boolean isNotifications() {
    return notifications;
  }

  public void setNotifications(Boolean notifications) {
    this.notifications = notifications;
  }

  public User globalRoles(List<GlobalRoleType> globalRoles) {
    this.globalRoles = globalRoles;
    return this;
  }

  public User addGlobalRolesItem(GlobalRoleType globalRolesItem) {
    if (this.globalRoles == null) {
      this.globalRoles = new ArrayList<GlobalRoleType>();
    }
    this.globalRoles.add(globalRolesItem);
    return this;
  }

  /**
   * List of global roles of the 'User'
   * @return globalRoles
   **/
  @Schema(description = "List of global roles of the 'User'")
      @Valid
    public List<GlobalRoleType> getGlobalRoles() {
    return globalRoles;
  }

  public void setGlobalRoles(List<GlobalRoleType> globalRoles) {
    this.globalRoles = globalRoles;
  }


  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    User user = (User) o;
    return Objects.equals(this.pseudo, user.pseudo) &&
        Objects.equals(this.studentNumber, user.studentNumber) &&
        Objects.equals(this.firstName, user.firstName) &&
        Objects.equals(this.lastName, user.lastName) &&
        Objects.equals(this.gender, user.gender) &&
        Objects.equals(this.profilePic, user.profilePic) &&
        Objects.equals(this.email, user.email) &&
        Objects.equals(this.phoneNumber, user.phoneNumber) &&
        Objects.equals(this.phoneBook, user.phoneBook) &&
        Objects.equals(this.notifications, user.notifications) &&
        Objects.equals(this.globalRoles, user.globalRoles);
  }

  @Override
  public int hashCode() {
    return Objects.hash(pseudo, studentNumber, firstName, lastName, gender, profilePic, email, phoneNumber, phoneBook, notifications, globalRoles);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class User {\n");
    
    sb.append("    pseudo: ").append(toIndentedString(pseudo)).append("\n");
    sb.append("    studentNumber: ").append(toIndentedString(studentNumber)).append("\n");
    sb.append("    firstName: ").append(toIndentedString(firstName)).append("\n");
    sb.append("    lastName: ").append(toIndentedString(lastName)).append("\n");
    sb.append("    gender: ").append(toIndentedString(gender)).append("\n");
    sb.append("    profilePic: ").append(toIndentedString(profilePic)).append("\n");
    sb.append("    email: ").append(toIndentedString(email)).append("\n");
    sb.append("    phoneNumber: ").append(toIndentedString(phoneNumber)).append("\n");
    sb.append("    phoneBook: ").append(toIndentedString(phoneBook)).append("\n");
    sb.append("    notifications: ").append(toIndentedString(notifications)).append("\n");
    sb.append("    globalRoles: ").append(toIndentedString(globalRoles)).append("\n");
    sb.append("}");
    return sb.toString();
  }

  /**
   * Convert the given object to string with each line indented by 4 spaces
   * (except the first line).
   */
  private String toIndentedString(java.lang.Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}
