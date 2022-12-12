package io.swagger.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.fasterxml.jackson.annotation.JsonValue;
import io.swagger.v3.oas.annotations.media.Schema;
import org.springframework.validation.annotation.Validated;
import javax.validation.Valid;
import javax.validation.constraints.*;

/**
 * InlineResponse2006
 */
@Validated
@javax.annotation.Generated(value = "io.swagger.codegen.v3.generators.java.SpringCodegen", date = "2022-12-12T07:32:15.929Z[GMT]")


public class InlineResponse2006   {
  /**
   * Gets or Sets pong
   */
  public enum PongEnum {
    OK("OK");

    private String value;

    PongEnum(String value) {
      this.value = value;
    }

    @Override
    @JsonValue
    public String toString() {
      return String.valueOf(value);
    }

    @JsonCreator
    public static PongEnum fromValue(String text) {
      for (PongEnum b : PongEnum.values()) {
        if (String.valueOf(b.value).equals(text)) {
          return b;
        }
      }
      return null;
    }
  }
  @JsonProperty("pong")
  private PongEnum pong = null;

  public InlineResponse2006 pong(PongEnum pong) {
    this.pong = pong;
    return this;
  }

  /**
   * Get pong
   * @return pong
   **/
  @Schema(example = "OK", required = true, description = "")
      @NotNull

    public PongEnum getPong() {
    return pong;
  }

  public void setPong(PongEnum pong) {
    this.pong = pong;
  }


  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    InlineResponse2006 inlineResponse2006 = (InlineResponse2006) o;
    return Objects.equals(this.pong, inlineResponse2006.pong);
  }

  @Override
  public int hashCode() {
    return Objects.hash(pong);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class InlineResponse2006 {\n");
    
    sb.append("    pong: ").append(toIndentedString(pong)).append("\n");
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
