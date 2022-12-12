package io.swagger.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import io.swagger.v3.oas.annotations.media.Schema;
import org.springframework.validation.annotation.Validated;
import javax.validation.Valid;
import javax.validation.constraints.*;

/**
 * Reduced description of an Organisation
 */
@Schema(description = "Reduced description of an Organisation")
@Validated
@javax.annotation.Generated(value = "io.swagger.codegen.v3.generators.java.SpringCodegen", date = "2022-12-12T07:32:15.929Z[GMT]")


public class OrganisationReduced   {
  @JsonProperty("siretNumber")
  private String siretNumber = null;

  @JsonProperty("name")
  private String name = null;

  public OrganisationReduced siretNumber(String siretNumber) {
    this.siretNumber = siretNumber;
    return this;
  }

  /**
   * Unique ID of the Organisation (https://en.wikipedia.org/wiki/SIRET_code)
   * @return siretNumber
   **/
  @Schema(example = "12482313546354", required = true, description = "Unique ID of the Organisation (https://en.wikipedia.org/wiki/SIRET_code)")
      @NotNull

  @Size(min=14,max=14)   public String getSiretNumber() {
    return siretNumber;
  }

  public void setSiretNumber(String siretNumber) {
    this.siretNumber = siretNumber;
  }

  public OrganisationReduced name(String name) {
    this.name = name;
    return this;
  }

  /**
   * Name of the 'Organisation'
   * @return name
   **/
  @Schema(example = "ABEI (Universit� de Blois)", required = true, description = "Name of the 'Organisation'")
      @NotNull

  @Size(min=1,max=45)   public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
  }


  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    OrganisationReduced organisationReduced = (OrganisationReduced) o;
    return Objects.equals(this.siretNumber, organisationReduced.siretNumber) &&
        Objects.equals(this.name, organisationReduced.name);
  }

  @Override
  public int hashCode() {
    return Objects.hash(siretNumber, name);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class OrganisationReduced {\n");
    
    sb.append("    siretNumber: ").append(toIndentedString(siretNumber)).append("\n");
    sb.append("    name: ").append(toIndentedString(name)).append("\n");
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
