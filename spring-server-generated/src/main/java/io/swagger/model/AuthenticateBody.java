package io.swagger.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import io.swagger.v3.oas.annotations.media.Schema;
import org.springframework.validation.annotation.Validated;
import javax.validation.Valid;
import javax.validation.constraints.*;

/**
 * AuthenticateBody
 */
@Validated
@javax.annotation.Generated(value = "io.swagger.codegen.v3.generators.java.SpringCodegen", date = "2022-12-12T07:32:15.929Z[GMT]")


public class AuthenticateBody   {
  @JsonProperty("login")
  private String login = null;

  @JsonProperty("password")
  private String password = null;

  public AuthenticateBody login(String login) {
    this.login = login;
    return this;
  }

  /**
   * Login of the user, declared when the User is created
   * @return login
   **/
  @Schema(example = "MirorEdge789", required = true, description = "Login of the user, declared when the User is created")
      @NotNull

  @Size(min=5,max=50)   public String getLogin() {
    return login;
  }

  public void setLogin(String login) {
    this.login = login;
  }

  public AuthenticateBody password(String password) {
    this.password = password;
    return this;
  }

  /**
   * Password used to identify the user on the plateform
   * @return password
   **/
  @Schema(example = "jhqsflljhsge5136534", required = true, description = "Password used to identify the user on the plateform")
      @NotNull

    public String getPassword() {
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
    AuthenticateBody authenticateBody = (AuthenticateBody) o;
    return Objects.equals(this.login, authenticateBody.login) &&
        Objects.equals(this.password, authenticateBody.password);
  }

  @Override
  public int hashCode() {
    return Objects.hash(login, password);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class AuthenticateBody {\n");
    
    sb.append("    login: ").append(toIndentedString(login)).append("\n");
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
