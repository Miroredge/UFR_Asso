package io.swagger.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import io.swagger.model.Newsletter;
import io.swagger.v3.oas.annotations.media.Schema;
import org.springframework.validation.annotation.Validated;
import javax.validation.Valid;
import javax.validation.constraints.*;

/**
 * AllOfinlineResponse2003EmbeddedEventsItems
 */
@Validated
@javax.annotation.Generated(value = "io.swagger.codegen.v3.generators.java.SpringCodegen", date = "2022-12-12T07:32:15.929Z[GMT]")


public class AllOfinlineResponse2003EmbeddedEventsItems   {
  @JsonProperty("title")
  private String title = null;

  @JsonProperty("description")
  private String description = null;

  @JsonProperty("body")
  private String body = null;

  public AllOfinlineResponse2003EmbeddedEventsItems title(String title) {
    this.title = title;
    return this;
  }

  /**
   * Title of the 'Newletter'
   * @return title
   **/
  @Schema(example = "Information newsletter - n�1", required = true, description = "Title of the 'Newletter'")
      @NotNull

  @Size(min=1,max=100)   public String getTitle() {
    return title;
  }

  public void setTitle(String title) {
    this.title = title;
  }

  public AllOfinlineResponse2003EmbeddedEventsItems description(String description) {
    this.description = description;
    return this;
  }

  /**
   * Description/Summary of the 'Newletter'. It can use the markdown syntax (https://www.markdownguide.org/cheat-sheet/)
   * @return description
   **/
  @Schema(example = "In this newsletter, you'll find all our latest news and the list of our next **amazing** parties ! We hope you'll enjoy reading it !", description = "Description/Summary of the 'Newletter'. It can use the markdown syntax (https://www.markdownguide.org/cheat-sheet/)")
  
    public String getDescription() {
    return description;
  }

  public void setDescription(String description) {
    this.description = description;
  }

  public AllOfinlineResponse2003EmbeddedEventsItems body(String body) {
    this.body = body;
    return this;
  }

  /**
   * Body of the 'Newletter'. It can use the markdown syntax (https://www.markdownguide.org/cheat-sheet/)
   * @return body
   **/
  @Schema(example = "Hello ! It's our first newsletter and it will be very short ... So short that this is the end ! Please send your comments on ou email [bde@univ-ufr.gouv.fr](mailto:bde@univ-ufr.gouv.fr)", description = "Body of the 'Newletter'. It can use the markdown syntax (https://www.markdownguide.org/cheat-sheet/)")
  
    public String getBody() {
    return body;
  }

  public void setBody(String body) {
    this.body = body;
  }


  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    AllOfinlineResponse2003EmbeddedEventsItems allOfinlineResponse2003EmbeddedEventsItems = (AllOfinlineResponse2003EmbeddedEventsItems) o;
    return Objects.equals(this.title, allOfinlineResponse2003EmbeddedEventsItems.title) &&
        Objects.equals(this.description, allOfinlineResponse2003EmbeddedEventsItems.description) &&
        Objects.equals(this.body, allOfinlineResponse2003EmbeddedEventsItems.body);
  }

  @Override
  public int hashCode() {
    return Objects.hash(title, description, body);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class AllOfinlineResponse2003EmbeddedEventsItems {\n");
    
    sb.append("    title: ").append(toIndentedString(title)).append("\n");
    sb.append("    description: ").append(toIndentedString(description)).append("\n");
    sb.append("    body: ").append(toIndentedString(body)).append("\n");
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
