package io.swagger.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import io.swagger.model.Newsletter;
import io.swagger.v3.oas.annotations.media.Schema;
import org.threeten.bp.OffsetDateTime;
import org.springframework.validation.annotation.Validated;
import javax.validation.Valid;
import javax.validation.constraints.*;

/**
 * Details associated to an &#x27;Newsletter&#x27;
 */
@Schema(description = "Details associated to an 'Newsletter'")
@Validated
@javax.annotation.Generated(value = "io.swagger.codegen.v3.generators.java.SpringCodegen", date = "2022-12-12T07:32:15.929Z[GMT]")


public class FullNewsletter extends Newsletter  {
  @JsonProperty("publicationDateTime")
  private OffsetDateTime publicationDateTime = null;

  public FullNewsletter publicationDateTime(OffsetDateTime publicationDateTime) {
    this.publicationDateTime = publicationDateTime;
    return this;
  }

  /**
   * Date/Time of the end of the publication of the 'Newletter' - UTC Date/Time - Format (ISO 8601) YYYY-MM-DDTHH24:MI:SSZ
   * @return publicationDateTime
   **/
  @Schema(example = "2019-09-19T03:30Z", description = "Date/Time of the end of the publication of the 'Newletter' - UTC Date/Time - Format (ISO 8601) YYYY-MM-DDTHH24:MI:SSZ")
  
    @Valid
    public OffsetDateTime getPublicationDateTime() {
    return publicationDateTime;
  }

  public void setPublicationDateTime(OffsetDateTime publicationDateTime) {
    this.publicationDateTime = publicationDateTime;
  }


  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    FullNewsletter fullNewsletter = (FullNewsletter) o;
    return Objects.equals(this.publicationDateTime, fullNewsletter.publicationDateTime) &&
        super.equals(o);
  }

  @Override
  public int hashCode() {
    return Objects.hash(publicationDateTime, super.hashCode());
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class FullNewsletter {\n");
    sb.append("    ").append(toIndentedString(super.toString())).append("\n");
    sb.append("    publicationDateTime: ").append(toIndentedString(publicationDateTime)).append("\n");
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
