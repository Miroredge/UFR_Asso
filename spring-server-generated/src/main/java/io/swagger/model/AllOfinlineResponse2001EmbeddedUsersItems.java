package io.swagger.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import io.swagger.model.Gender;
import io.swagger.model.GlobalRoleType;
import io.swagger.model.RoleType;
import io.swagger.model.User;
import io.swagger.v3.oas.annotations.media.Schema;
import java.util.List;
import org.springframework.validation.annotation.Validated;
import javax.validation.Valid;
import javax.validation.constraints.*;

/**
 * AllOfinlineResponse2001EmbeddedUsersItems
 */
@Validated
@javax.annotation.Generated(value = "io.swagger.codegen.v3.generators.java.SpringCodegen", date = "2022-12-12T07:32:15.929Z[GMT]")


public class AllOfinlineResponse2001EmbeddedUsersItems extends User  {
  @JsonProperty("roles")
  private RoleType roles = null;

  public AllOfinlineResponse2001EmbeddedUsersItems roles(RoleType roles) {
    this.roles = roles;
    return this;
  }

  /**
   * Get roles
   * @return roles
   **/
  @Schema(description = "")
  
    @Valid
    public RoleType getRoles() {
    return roles;
  }

  public void setRoles(RoleType roles) {
    this.roles = roles;
  }


  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    AllOfinlineResponse2001EmbeddedUsersItems allOfinlineResponse2001EmbeddedUsersItems = (AllOfinlineResponse2001EmbeddedUsersItems) o;
    return Objects.equals(this.roles, allOfinlineResponse2001EmbeddedUsersItems.roles) &&
        super.equals(o);
  }

  @Override
  public int hashCode() {
    return Objects.hash(roles, super.hashCode());
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class AllOfinlineResponse2001EmbeddedUsersItems {\n");
    sb.append("    ").append(toIndentedString(super.toString())).append("\n");
    sb.append("    roles: ").append(toIndentedString(roles)).append("\n");
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
