package io.swagger.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import io.swagger.model.DayOfWeek;
import io.swagger.model.OpeningHour;
import io.swagger.v3.oas.annotations.media.Schema;
import org.springframework.validation.annotation.Validated;
import javax.validation.Valid;
import javax.validation.constraints.*;

/**
 * AllOfinlineResponse2002EmbeddedOpeningHoursItems
 */
@Validated
@javax.annotation.Generated(value = "io.swagger.codegen.v3.generators.java.SpringCodegen", date = "2022-12-12T07:32:15.929Z[GMT]")


public class AllOfinlineResponse2002EmbeddedOpeningHoursItems   {
  @JsonProperty("dayOfWeek")
  private DayOfWeek dayOfWeek = null;

  @JsonProperty("openingTime")
  private String openingTime = null;

  @JsonProperty("closingTime")
  private String closingTime = null;

  public AllOfinlineResponse2002EmbeddedOpeningHoursItems dayOfWeek(DayOfWeek dayOfWeek) {
    this.dayOfWeek = dayOfWeek;
    return this;
  }

  /**
   * Get dayOfWeek
   * @return dayOfWeek
   **/
  @Schema(description = "")
  
    @Valid
    public DayOfWeek getDayOfWeek() {
    return dayOfWeek;
  }

  public void setDayOfWeek(DayOfWeek dayOfWeek) {
    this.dayOfWeek = dayOfWeek;
  }

  public AllOfinlineResponse2002EmbeddedOpeningHoursItems openingTime(String openingTime) {
    this.openingTime = openingTime;
    return this;
  }

  /**
   * Time in the day where the time slot starts (HH:MI, HH from 00 to 24)
   * @return openingTime
   **/
  @Schema(example = "08:00", description = "Time in the day where the time slot starts (HH:MI, HH from 00 to 24)")
  
  @Size(min=5,max=5)   public String getOpeningTime() {
    return openingTime;
  }

  public void setOpeningTime(String openingTime) {
    this.openingTime = openingTime;
  }

  public AllOfinlineResponse2002EmbeddedOpeningHoursItems closingTime(String closingTime) {
    this.closingTime = closingTime;
    return this;
  }

  /**
   * Time in the day where the time slot ends (HH:MI, HH from 00 to 24)
   * @return closingTime
   **/
  @Schema(example = "13:00", description = "Time in the day where the time slot ends (HH:MI, HH from 00 to 24)")
  
  @Size(min=5,max=5)   public String getClosingTime() {
    return closingTime;
  }

  public void setClosingTime(String closingTime) {
    this.closingTime = closingTime;
  }


  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    AllOfinlineResponse2002EmbeddedOpeningHoursItems allOfinlineResponse2002EmbeddedOpeningHoursItems = (AllOfinlineResponse2002EmbeddedOpeningHoursItems) o;
    return Objects.equals(this.dayOfWeek, allOfinlineResponse2002EmbeddedOpeningHoursItems.dayOfWeek) &&
        Objects.equals(this.openingTime, allOfinlineResponse2002EmbeddedOpeningHoursItems.openingTime) &&
        Objects.equals(this.closingTime, allOfinlineResponse2002EmbeddedOpeningHoursItems.closingTime);
  }

  @Override
  public int hashCode() {
    return Objects.hash(dayOfWeek, openingTime, closingTime);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class AllOfinlineResponse2002EmbeddedOpeningHoursItems {\n");
    
    sb.append("    dayOfWeek: ").append(toIndentedString(dayOfWeek)).append("\n");
    sb.append("    openingTime: ").append(toIndentedString(openingTime)).append("\n");
    sb.append("    closingTime: ").append(toIndentedString(closingTime)).append("\n");
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
