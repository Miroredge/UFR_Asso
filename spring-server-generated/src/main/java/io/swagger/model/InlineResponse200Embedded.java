package io.swagger.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import io.swagger.model.OrganisationFound;
import io.swagger.v3.oas.annotations.media.Schema;
import java.util.ArrayList;
import java.util.List;
import org.springframework.validation.annotation.Validated;
import javax.validation.Valid;
import javax.validation.constraints.*;

/**
 * InlineResponse200Embedded
 */
@Validated
@javax.annotation.Generated(value = "io.swagger.codegen.v3.generators.java.SpringCodegen", date = "2022-12-12T07:32:15.929Z[GMT]")


public class InlineResponse200Embedded   {
  @JsonProperty("organisations")
  @Valid
  private List<OrganisationFound> organisations = new ArrayList<OrganisationFound>();

  public InlineResponse200Embedded organisations(List<OrganisationFound> organisations) {
    this.organisations = organisations;
    return this;
  }

  public InlineResponse200Embedded addOrganisationsItem(OrganisationFound organisationsItem) {
    this.organisations.add(organisationsItem);
    return this;
  }

  /**
   * List of 'Organisation'
   * @return organisations
   **/
  @Schema(required = true, description = "List of 'Organisation'")
      @NotNull
    @Valid
    public List<OrganisationFound> getOrganisations() {
    return organisations;
  }

  public void setOrganisations(List<OrganisationFound> organisations) {
    this.organisations = organisations;
  }


  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    InlineResponse200Embedded inlineResponse200Embedded = (InlineResponse200Embedded) o;
    return Objects.equals(this.organisations, inlineResponse200Embedded.organisations);
  }

  @Override
  public int hashCode() {
    return Objects.hash(organisations);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class InlineResponse200Embedded {\n");
    
    sb.append("    organisations: ").append(toIndentedString(organisations)).append("\n");
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
