package io.swagger.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import io.swagger.model.Error;
import io.swagger.v3.oas.annotations.media.Schema;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;
import org.threeten.bp.OffsetDateTime;
import org.springframework.validation.annotation.Validated;
import javax.validation.Valid;
import javax.validation.constraints.*;

/**
 * Description of a REST event
 */
@Schema(description = "Description of a REST event")
@Validated
@javax.annotation.Generated(value = "io.swagger.codegen.v3.generators.java.SpringCodegen", date = "2022-12-12T07:32:15.929Z[GMT]")


public class EventREST   {
  @JsonProperty("X-Transaction-ID")
  private UUID xTransactionID = null;

  @JsonProperty("ETag")
  private UUID etag = null;

  @JsonProperty("lastModified")
  private OffsetDateTime lastModified = null;

  @JsonProperty("errors")
  @Valid
  private List<Error> errors = null;

  public EventREST xTransactionID(UUID xTransactionID) {
    this.xTransactionID = xTransactionID;
    return this;
  }

  /**
   * Get xTransactionID
   * @return xTransactionID
   **/
  @Schema(example = "123e4567-e89b-12d3-a456-426655440000", required = true, description = "")
      @NotNull

    @Valid
    public UUID getXTransactionID() {
    return xTransactionID;
  }

  public void setXTransactionID(UUID xTransactionID) {
    this.xTransactionID = xTransactionID;
  }

  public EventREST etag(UUID etag) {
    this.etag = etag;
    return this;
  }

  /**
   * ETag (https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/ETag)
   * @return etag
   **/
  @Schema(example = "123e4567-e89b-12d3-a456-426655440000", required = true, description = "ETag (https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/ETag)")
      @NotNull

    @Valid
    public UUID getEtag() {
    return etag;
  }

  public void setEtag(UUID etag) {
    this.etag = etag;
  }

  public EventREST lastModified(OffsetDateTime lastModified) {
    this.lastModified = lastModified;
    return this;
  }

  /**
   * Last Modified date (Create/Update/Delete) (https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Last-Modified)
   * @return lastModified
   **/
  @Schema(example = "2019-09-18T23:56:16Z", required = true, description = "Last Modified date (Create/Update/Delete) (https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Last-Modified)")
      @NotNull

    @Valid
    public OffsetDateTime getLastModified() {
    return lastModified;
  }

  public void setLastModified(OffsetDateTime lastModified) {
    this.lastModified = lastModified;
  }

  public EventREST errors(List<Error> errors) {
    this.errors = errors;
    return this;
  }

  public EventREST addErrorsItem(Error errorsItem) {
    if (this.errors == null) {
      this.errors = new ArrayList<Error>();
    }
    this.errors.add(errorsItem);
    return this;
  }

  /**
   * List of errors
   * @return errors
   **/
  @Schema(description = "List of errors")
      @Valid
    public List<Error> getErrors() {
    return errors;
  }

  public void setErrors(List<Error> errors) {
    this.errors = errors;
  }


  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    EventREST eventREST = (EventREST) o;
    return Objects.equals(this.xTransactionID, eventREST.xTransactionID) &&
        Objects.equals(this.etag, eventREST.etag) &&
        Objects.equals(this.lastModified, eventREST.lastModified) &&
        Objects.equals(this.errors, eventREST.errors);
  }

  @Override
  public int hashCode() {
    return Objects.hash(xTransactionID, etag, lastModified, errors);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class EventREST {\n");
    
    sb.append("    xTransactionID: ").append(toIndentedString(xTransactionID)).append("\n");
    sb.append("    etag: ").append(toIndentedString(etag)).append("\n");
    sb.append("    lastModified: ").append(toIndentedString(lastModified)).append("\n");
    sb.append("    errors: ").append(toIndentedString(errors)).append("\n");
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
