package io.swagger.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import io.swagger.v3.oas.annotations.media.Schema;
import java.util.ArrayList;
import java.util.List;
import org.springframework.validation.annotation.Validated;
import javax.validation.Valid;
import javax.validation.constraints.*;

/**
 * InlineResponse2001Embedded
 */
@Validated
@javax.annotation.Generated(value = "io.swagger.codegen.v3.generators.java.SpringCodegen", date = "2022-12-12T07:32:15.929Z[GMT]")


public class InlineResponse2001Embedded   {
  @JsonProperty("users")
  @Valid
  private List<AllOfinlineResponse2001EmbeddedUsersItems> users = new ArrayList<AllOfinlineResponse2001EmbeddedUsersItems>();

  public InlineResponse2001Embedded users(List<AllOfinlineResponse2001EmbeddedUsersItems> users) {
    this.users = users;
    return this;
  }

  public InlineResponse2001Embedded addUsersItem(AllOfinlineResponse2001EmbeddedUsersItems usersItem) {
    this.users.add(usersItem);
    return this;
  }

  /**
   * List of 'Users' in the 'Organisation'
   * @return users
   **/
  @Schema(required = true, description = "List of 'Users' in the 'Organisation'")
      @NotNull

    public List<AllOfinlineResponse2001EmbeddedUsersItems> getUsers() {
    return users;
  }

  public void setUsers(List<AllOfinlineResponse2001EmbeddedUsersItems> users) {
    this.users = users;
  }


  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    InlineResponse2001Embedded inlineResponse2001Embedded = (InlineResponse2001Embedded) o;
    return Objects.equals(this.users, inlineResponse2001Embedded.users);
  }

  @Override
  public int hashCode() {
    return Objects.hash(users);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class InlineResponse2001Embedded {\n");
    
    sb.append("    users: ").append(toIndentedString(users)).append("\n");
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
