package io.swagger.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import io.swagger.model.Gender;
import io.swagger.model.GlobalRoleType;
import io.swagger.model.User;
import io.swagger.v3.oas.annotations.media.Schema;
import java.util.List;
import org.springframework.validation.annotation.Validated;
import javax.validation.Valid;
import javax.validation.constraints.*;

/**
 * UsersBody
 */
@Validated
@javax.annotation.Generated(value = "io.swagger.codegen.v3.generators.java.SpringCodegen", date = "2022-12-12T07:32:15.929Z[GMT]")


public class UsersBody extends User  {
  @JsonProperty("password")
  private String password = null;

  public UsersBody password(String password) {
    this.password = password;
    return this;
  }

  /**
   * Password used to identify the user on the plateform
   * @return password
   **/
  @Schema(example = "jhqsflljhsge5136534", description = "Password used to identify the user on the plateform")
  
  @Size(min=5,max=200)   public String getPassword() {
    return password;
  }

  public void setPassword(String password) {
    this.password = password;
  }


  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    UsersBody usersBody = (UsersBody) o;
    return Objects.equals(this.password, usersBody.password) &&
        super.equals(o);
  }

  @Override
  public int hashCode() {
    return Objects.hash(password, super.hashCode());
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class UsersBody {\n");
    sb.append("    ").append(toIndentedString(super.toString())).append("\n");
    sb.append("    password: ").append(toIndentedString(password)).append("\n");
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
