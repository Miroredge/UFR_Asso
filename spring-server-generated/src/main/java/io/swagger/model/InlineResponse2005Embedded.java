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
 * InlineResponse2005Embedded
 */
@Validated
@javax.annotation.Generated(value = "io.swagger.codegen.v3.generators.java.SpringCodegen", date = "2022-12-12T07:32:15.929Z[GMT]")


public class InlineResponse2005Embedded   {
  @JsonProperty("events")
  @Valid
  private List<AllOfinlineResponse2005EmbeddedEventsItems> events = new ArrayList<AllOfinlineResponse2005EmbeddedEventsItems>();

  public InlineResponse2005Embedded events(List<AllOfinlineResponse2005EmbeddedEventsItems> events) {
    this.events = events;
    return this;
  }

  public InlineResponse2005Embedded addEventsItem(AllOfinlineResponse2005EmbeddedEventsItems eventsItem) {
    this.events.add(eventsItem);
    return this;
  }

  /**
   * List of 'Event' in the 'Organisation'
   * @return events
   **/
  @Schema(required = true, description = "List of 'Event' in the 'Organisation'")
      @NotNull

    public List<AllOfinlineResponse2005EmbeddedEventsItems> getEvents() {
    return events;
  }

  public void setEvents(List<AllOfinlineResponse2005EmbeddedEventsItems> events) {
    this.events = events;
  }


  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    InlineResponse2005Embedded inlineResponse2005Embedded = (InlineResponse2005Embedded) o;
    return Objects.equals(this.events, inlineResponse2005Embedded.events);
  }

  @Override
  public int hashCode() {
    return Objects.hash(events);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class InlineResponse2005Embedded {\n");
    
    sb.append("    events: ").append(toIndentedString(events)).append("\n");
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
