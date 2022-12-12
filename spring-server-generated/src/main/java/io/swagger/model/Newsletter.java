package io.swagger.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import io.swagger.v3.oas.annotations.media.Schema;
import org.springframework.validation.annotation.Validated;
import javax.validation.Valid;
import javax.validation.constraints.*;

/**
 * Initial data associated to an &#x27;Newsletter&#x27;
 */
@Schema(description = "Initial data associated to an 'Newsletter'")
@Validated
@javax.annotation.Generated(value = "io.swagger.codegen.v3.generators.java.SpringCodegen", date = "2022-12-12T07:32:15.929Z[GMT]")


public class Newsletter   {
  @JsonProperty("title")
  private String title = null;

  @JsonProperty("description")
  private String description = null;

  @JsonProperty("body")
  private String body = null;

  public Newsletter title(String title) {
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

  public Newsletter description(String description) {
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

  public Newsletter body(String body) {
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
    Newsletter newsletter = (Newsletter) o;
    return Objects.equals(this.title, newsletter.title) &&
        Objects.equals(this.description, newsletter.description) &&
        Objects.equals(this.body, newsletter.body);
  }

  @Override
  public int hashCode() {
    return Objects.hash(title, description, body);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class Newsletter {\n");
    
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
