package io.swagger.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import io.swagger.model.InlineResponse2004Embedded;
import io.swagger.model.InlineResponse200Links;
import io.swagger.model.InlineResponse200Pagination;
import io.swagger.v3.oas.annotations.media.Schema;
import org.springframework.validation.annotation.Validated;
import javax.validation.Valid;
import javax.validation.constraints.*;

/**
 * InlineResponse2004
 */
@Validated
@javax.annotation.Generated(value = "io.swagger.codegen.v3.generators.java.SpringCodegen", date = "2022-12-12T07:32:15.929Z[GMT]")


public class InlineResponse2004   {
  @JsonProperty("_links")
  private InlineResponse200Links _links = null;

  @JsonProperty("_pagination")
  private InlineResponse200Pagination _pagination = null;

  @JsonProperty("_embedded")
  private InlineResponse2004Embedded _embedded = null;

  public InlineResponse2004 _links(InlineResponse200Links _links) {
    this._links = _links;
    return this;
  }

  /**
   * Get _links
   * @return _links
   **/
  @Schema(description = "")
  
    @Valid
    public InlineResponse200Links getLinks() {
    return _links;
  }

  public void setLinks(InlineResponse200Links _links) {
    this._links = _links;
  }

  public InlineResponse2004 _pagination(InlineResponse200Pagination _pagination) {
    this._pagination = _pagination;
    return this;
  }

  /**
   * Get _pagination
   * @return _pagination
   **/
  @Schema(required = true, description = "")
      @NotNull

    @Valid
    public InlineResponse200Pagination getPagination() {
    return _pagination;
  }

  public void setPagination(InlineResponse200Pagination _pagination) {
    this._pagination = _pagination;
  }

  public InlineResponse2004 _embedded(InlineResponse2004Embedded _embedded) {
    this._embedded = _embedded;
    return this;
  }

  /**
   * Get _embedded
   * @return _embedded
   **/
  @Schema(required = true, description = "")
      @NotNull

    @Valid
    public InlineResponse2004Embedded getEmbedded() {
    return _embedded;
  }

  public void setEmbedded(InlineResponse2004Embedded _embedded) {
    this._embedded = _embedded;
  }


  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    InlineResponse2004 inlineResponse2004 = (InlineResponse2004) o;
    return Objects.equals(this._links, inlineResponse2004._links) &&
        Objects.equals(this._pagination, inlineResponse2004._pagination) &&
        Objects.equals(this._embedded, inlineResponse2004._embedded);
  }

  @Override
  public int hashCode() {
    return Objects.hash(_links, _pagination, _embedded);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class InlineResponse2004 {\n");
    
    sb.append("    _links: ").append(toIndentedString(_links)).append("\n");
    sb.append("    _pagination: ").append(toIndentedString(_pagination)).append("\n");
    sb.append("    _embedded: ").append(toIndentedString(_embedded)).append("\n");
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
