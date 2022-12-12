package io.swagger.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import io.swagger.model.Event;
import io.swagger.v3.oas.annotations.media.Schema;
import org.threeten.bp.OffsetDateTime;
import org.springframework.validation.annotation.Validated;
import javax.validation.Valid;
import javax.validation.constraints.*;

/**
 * AllOfinlineResponse2005EmbeddedEventsItems
 */
@Validated
@javax.annotation.Generated(value = "io.swagger.codegen.v3.generators.java.SpringCodegen", date = "2022-12-12T07:32:15.929Z[GMT]")


public class AllOfinlineResponse2005EmbeddedEventsItems   {
  @JsonProperty("name")
  private String name = null;

  @JsonProperty("startDateTime")
  private OffsetDateTime startDateTime = null;

  @JsonProperty("endDateTime")
  private OffsetDateTime endDateTime = null;

  @JsonProperty("place")
  private String place = null;

  @JsonProperty("price")
  private Float price = null;

  @JsonProperty("description")
  private String description = null;

  public AllOfinlineResponse2005EmbeddedEventsItems name(String name) {
    this.name = name;
    return this;
  }

  /**
   * Name of the 'Organisation'
   * @return name
   **/
  @Schema(example = "Z'Event", required = true, description = "Name of the 'Organisation'")
      @NotNull

  @Size(min=1,max=45)   public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
  }

  public AllOfinlineResponse2005EmbeddedEventsItems startDateTime(OffsetDateTime startDateTime) {
    this.startDateTime = startDateTime;
    return this;
  }

  /**
   * Date/Time of the start of the Event - UTC Date/Time - Format (ISO 8601) YYYY-MM-DDTHH24:MI:SSZ
   * @return startDateTime
   **/
  @Schema(example = "2019-09-18T19:00Z", required = true, description = "Date/Time of the start of the Event - UTC Date/Time - Format (ISO 8601) YYYY-MM-DDTHH24:MI:SSZ")
      @NotNull

    @Valid
    public OffsetDateTime getStartDateTime() {
    return startDateTime;
  }

  public void setStartDateTime(OffsetDateTime startDateTime) {
    this.startDateTime = startDateTime;
  }

  public AllOfinlineResponse2005EmbeddedEventsItems endDateTime(OffsetDateTime endDateTime) {
    this.endDateTime = endDateTime;
    return this;
  }

  /**
   * Date/Time of the end of the Event - UTC Date/Time - Format (ISO 8601) YYYY-MM-DDTHH24:MI:SSZ
   * @return endDateTime
   **/
  @Schema(example = "2019-09-19T03:30Z", required = true, description = "Date/Time of the end of the Event - UTC Date/Time - Format (ISO 8601) YYYY-MM-DDTHH24:MI:SSZ")
      @NotNull

    @Valid
    public OffsetDateTime getEndDateTime() {
    return endDateTime;
  }

  public void setEndDateTime(OffsetDateTime endDateTime) {
    this.endDateTime = endDateTime;
  }

  public AllOfinlineResponse2005EmbeddedEventsItems place(String place) {
    this.place = place;
    return this;
  }

  /**
   * Location of the event
   * @return place
   **/
  @Schema(example = "31, Rue de la Poup�e qui tousse - 41000 Blois", description = "Location of the event")
  
  @Size(min=1,max=200)   public String getPlace() {
    return place;
  }

  public void setPlace(String place) {
    this.place = place;
  }

  public AllOfinlineResponse2005EmbeddedEventsItems price(Float price) {
    this.price = price;
    return this;
  }

  /**
   * Price of the subscription (Currency : Euro)
   * minimum: 0
   * @return price
   **/
  @Schema(example = "3.14159", description = "Price of the subscription (Currency : Euro)")
  
  @DecimalMin("0")  public Float getPrice() {
    return price;
  }

  public void setPrice(Float price) {
    this.price = price;
  }

  public AllOfinlineResponse2005EmbeddedEventsItems description(String description) {
    this.description = description;
    return this;
  }

  /**
   * Description of the event. It can use the markdown syntax (https://www.markdownguide.org/cheat-sheet/)
   * @return description
   **/
  @Schema(example = "It will be a **marvelous** *Event* ! [Z'Event](https://zevent.fr/)", description = "Description of the event. It can use the markdown syntax (https://www.markdownguide.org/cheat-sheet/)")
  
    public String getDescription() {
    return description;
  }

  public void setDescription(String description) {
    this.description = description;
  }


  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    AllOfinlineResponse2005EmbeddedEventsItems allOfinlineResponse2005EmbeddedEventsItems = (AllOfinlineResponse2005EmbeddedEventsItems) o;
    return Objects.equals(this.name, allOfinlineResponse2005EmbeddedEventsItems.name) &&
        Objects.equals(this.startDateTime, allOfinlineResponse2005EmbeddedEventsItems.startDateTime) &&
        Objects.equals(this.endDateTime, allOfinlineResponse2005EmbeddedEventsItems.endDateTime) &&
        Objects.equals(this.place, allOfinlineResponse2005EmbeddedEventsItems.place) &&
        Objects.equals(this.price, allOfinlineResponse2005EmbeddedEventsItems.price) &&
        Objects.equals(this.description, allOfinlineResponse2005EmbeddedEventsItems.description);
  }

  @Override
  public int hashCode() {
    return Objects.hash(name, startDateTime, endDateTime, place, price, description);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class AllOfinlineResponse2005EmbeddedEventsItems {\n");
    
    sb.append("    name: ").append(toIndentedString(name)).append("\n");
    sb.append("    startDateTime: ").append(toIndentedString(startDateTime)).append("\n");
    sb.append("    endDateTime: ").append(toIndentedString(endDateTime)).append("\n");
    sb.append("    place: ").append(toIndentedString(place)).append("\n");
    sb.append("    price: ").append(toIndentedString(price)).append("\n");
    sb.append("    description: ").append(toIndentedString(description)).append("\n");
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
