package io.swagger.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import io.swagger.model.VerbHTTP;
import io.swagger.v3.oas.annotations.media.Schema;
import org.springframework.validation.annotation.Validated;
import javax.validation.Valid;
import javax.validation.constraints.*;

/**
 * Link to an item as proposed in HATEOAS
 */
@Schema(description = "Link to an item as proposed in HATEOAS")
@Validated
@javax.annotation.Generated(value = "io.swagger.codegen.v3.generators.java.SpringCodegen", date = "2022-12-12T07:32:15.929Z[GMT]")


public class LinkToItem   {
  @JsonProperty("href")
  private String href = null;

  @JsonProperty("rel")
  private String rel = null;

  @JsonProperty("type")
  private VerbHTTP type = null;

  public LinkToItem href(String href) {
    this.href = href;
    return this;
  }

  /**
   * Link to the ressource
   * @return href
   **/
  @Schema(example = "/api/ufr_asso/v1/users/MirorEdge", required = true, description = "Link to the ressource")
      @NotNull

    public String getHref() {
    return href;
  }

  public void setHref(String href) {
    this.href = href;
  }

  public LinkToItem rel(String rel) {
    this.rel = rel;
    return this;
  }

  /**
   * Reference
   * @return rel
   **/
  @Schema(example = "self", required = true, description = "Reference")
      @NotNull

  @Size(max=50)   public String getRel() {
    return rel;
  }

  public void setRel(String rel) {
    this.rel = rel;
  }

  public LinkToItem type(VerbHTTP type) {
    this.type = type;
    return this;
  }

  /**
   * Get type
   * @return type
   **/
  @Schema(required = true, description = "")
      @NotNull

    @Valid
    public VerbHTTP getType() {
    return type;
  }

  public void setType(VerbHTTP type) {
    this.type = type;
  }


  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    LinkToItem linkToItem = (LinkToItem) o;
    return Objects.equals(this.href, linkToItem.href) &&
        Objects.equals(this.rel, linkToItem.rel) &&
        Objects.equals(this.type, linkToItem.type);
  }

  @Override
  public int hashCode() {
    return Objects.hash(href, rel, type);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class LinkToItem {\n");
    
    sb.append("    href: ").append(toIndentedString(href)).append("\n");
    sb.append("    rel: ").append(toIndentedString(rel)).append("\n");
    sb.append("    type: ").append(toIndentedString(type)).append("\n");
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
