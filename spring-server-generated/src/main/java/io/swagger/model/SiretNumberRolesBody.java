package io.swagger.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import io.swagger.model.RoleType;
import io.swagger.v3.oas.annotations.media.Schema;
import java.util.ArrayList;
import java.util.List;
import org.springframework.validation.annotation.Validated;
import javax.validation.Valid;
import javax.validation.constraints.*;

/**
 * SiretNumberRolesBody
 */
@Validated
@javax.annotation.Generated(value = "io.swagger.codegen.v3.generators.java.SpringCodegen", date = "2022-12-12T07:32:15.929Z[GMT]")


public class SiretNumberRolesBody   {
  @JsonProperty("roles")
  @Valid
  private List<RoleType> roles = null;

  public SiretNumberRolesBody roles(List<RoleType> roles) {
    this.roles = roles;
    return this;
  }

  public SiretNumberRolesBody addRolesItem(RoleType rolesItem) {
    if (this.roles == null) {
      this.roles = new ArrayList<RoleType>();
    }
    this.roles.add(rolesItem);
    return this;
  }

  /**
   * List of roles
   * @return roles
   **/
  @Schema(description = "List of roles")
      @Valid
    public List<RoleType> getRoles() {
    return roles;
  }

  public void setRoles(List<RoleType> roles) {
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
    SiretNumberRolesBody siretNumberRolesBody = (SiretNumberRolesBody) o;
    return Objects.equals(this.roles, siretNumberRolesBody.roles);
  }

  @Override
  public int hashCode() {
    return Objects.hash(roles);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class SiretNumberRolesBody {\n");
    
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
