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
 * InlineResponse2002Embedded
 */
@Validated
@javax.annotation.Generated(value = "io.swagger.codegen.v3.generators.java.SpringCodegen", date = "2022-12-12T07:32:15.929Z[GMT]")


public class InlineResponse2002Embedded   {
  @JsonProperty("openingHours")
  @Valid
  private List<AllOfinlineResponse2002EmbeddedOpeningHoursItems> openingHours = new ArrayList<AllOfinlineResponse2002EmbeddedOpeningHoursItems>();

  public InlineResponse2002Embedded openingHours(List<AllOfinlineResponse2002EmbeddedOpeningHoursItems> openingHours) {
    this.openingHours = openingHours;
    return this;
  }

  public InlineResponse2002Embedded addOpeningHoursItem(AllOfinlineResponse2002EmbeddedOpeningHoursItems openingHoursItem) {
    this.openingHours.add(openingHoursItem);
    return this;
  }

  /**
   * List of 'Opening hour' in the 'Organisation'
   * @return openingHours
   **/
  @Schema(required = true, description = "List of 'Opening hour' in the 'Organisation'")
      @NotNull

    public List<AllOfinlineResponse2002EmbeddedOpeningHoursItems> getOpeningHours() {
    return openingHours;
  }

  public void setOpeningHours(List<AllOfinlineResponse2002EmbeddedOpeningHoursItems> openingHours) {
    this.openingHours = openingHours;
  }


  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    InlineResponse2002Embedded inlineResponse2002Embedded = (InlineResponse2002Embedded) o;
    return Objects.equals(this.openingHours, inlineResponse2002Embedded.openingHours);
  }

  @Override
  public int hashCode() {
    return Objects.hash(openingHours);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class InlineResponse2002Embedded {\n");
    
    sb.append("    openingHours: ").append(toIndentedString(openingHours)).append("\n");
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
