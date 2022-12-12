package io.swagger.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import io.swagger.model.Organisation;
import io.swagger.v3.oas.annotations.media.Schema;
import org.springframework.validation.annotation.Validated;
import javax.validation.Valid;
import javax.validation.constraints.*;

/**
 * OrganisationsSiretNumberBody
 */
@Validated
@javax.annotation.Generated(value = "io.swagger.codegen.v3.generators.java.SpringCodegen", date = "2022-12-12T07:32:15.929Z[GMT]")


public class OrganisationsSiretNumberBody   {
  @JsonProperty("user")
  private Organisation user = null;

  public OrganisationsSiretNumberBody user(Organisation user) {
    this.user = user;
    return this;
  }

  /**
   * Get user
   * @return user
   **/
  @Schema(required = true, description = "")
      @NotNull

    @Valid
    public Organisation getUser() {
    return user;
  }

  public void setUser(Organisation user) {
    this.user = user;
  }


  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    OrganisationsSiretNumberBody organisationsSiretNumberBody = (OrganisationsSiretNumberBody) o;
    return Objects.equals(this.user, organisationsSiretNumberBody.user);
  }

  @Override
  public int hashCode() {
    return Objects.hash(user);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class OrganisationsSiretNumberBody {\n");
    
    sb.append("    user: ").append(toIndentedString(user)).append("\n");
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
