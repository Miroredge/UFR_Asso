package io.swagger.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import io.swagger.v3.oas.annotations.media.Schema;
import org.springframework.validation.annotation.Validated;
import javax.validation.Valid;
import javax.validation.constraints.*;

/**
 * InlineResponse200Links
 */
@Validated
@javax.annotation.Generated(value = "io.swagger.codegen.v3.generators.java.SpringCodegen", date = "2022-12-12T07:32:15.929Z[GMT]")


public class InlineResponse200Links   {
  @JsonProperty("self")
  private Object self = null;

  @JsonProperty("first")
  private Object first = null;

  @JsonProperty("last")
  private Object last = null;

  public InlineResponse200Links self(Object self) {
    this.self = self;
    return this;
  }

  /**
   * Get self
   * @return self
   **/
  @Schema(required = true, description = "")
      @NotNull

    public Object getSelf() {
    return self;
  }

  public void setSelf(Object self) {
    this.self = self;
  }

  public InlineResponse200Links first(Object first) {
    this.first = first;
    return this;
  }

  /**
   * Get first
   * @return first
   **/
  @Schema(required = true, description = "")
      @NotNull

    public Object getFirst() {
    return first;
  }

  public void setFirst(Object first) {
    this.first = first;
  }

  public InlineResponse200Links last(Object last) {
    this.last = last;
    return this;
  }

  /**
   * Get last
   * @return last
   **/
  @Schema(required = true, description = "")
      @NotNull

    public Object getLast() {
    return last;
  }

  public void setLast(Object last) {
    this.last = last;
  }


  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    InlineResponse200Links inlineResponse200Links = (InlineResponse200Links) o;
    return Objects.equals(this.self, inlineResponse200Links.self) &&
        Objects.equals(this.first, inlineResponse200Links.first) &&
        Objects.equals(this.last, inlineResponse200Links.last);
  }

  @Override
  public int hashCode() {
    return Objects.hash(self, first, last);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class InlineResponse200Links {\n");
    
    sb.append("    self: ").append(toIndentedString(self)).append("\n");
    sb.append("    first: ").append(toIndentedString(first)).append("\n");
    sb.append("    last: ").append(toIndentedString(last)).append("\n");
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
