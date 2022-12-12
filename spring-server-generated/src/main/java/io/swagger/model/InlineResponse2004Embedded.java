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
 * InlineResponse2004Embedded
 */
@Validated
@javax.annotation.Generated(value = "io.swagger.codegen.v3.generators.java.SpringCodegen", date = "2022-12-12T07:32:15.929Z[GMT]")


public class InlineResponse2004Embedded   {
  @JsonProperty("bookEntries")
  @Valid
  private List<AllOfinlineResponse2004EmbeddedBookEntriesItems> bookEntries = new ArrayList<AllOfinlineResponse2004EmbeddedBookEntriesItems>();

  public InlineResponse2004Embedded bookEntries(List<AllOfinlineResponse2004EmbeddedBookEntriesItems> bookEntries) {
    this.bookEntries = bookEntries;
    return this;
  }

  public InlineResponse2004Embedded addBookEntriesItem(AllOfinlineResponse2004EmbeddedBookEntriesItems bookEntriesItem) {
    this.bookEntries.add(bookEntriesItem);
    return this;
  }

  /**
   * List of 'BookEntry' in the 'Organisation'
   * @return bookEntries
   **/
  @Schema(required = true, description = "List of 'BookEntry' in the 'Organisation'")
      @NotNull

    public List<AllOfinlineResponse2004EmbeddedBookEntriesItems> getBookEntries() {
    return bookEntries;
  }

  public void setBookEntries(List<AllOfinlineResponse2004EmbeddedBookEntriesItems> bookEntries) {
    this.bookEntries = bookEntries;
  }


  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    InlineResponse2004Embedded inlineResponse2004Embedded = (InlineResponse2004Embedded) o;
    return Objects.equals(this.bookEntries, inlineResponse2004Embedded.bookEntries);
  }

  @Override
  public int hashCode() {
    return Objects.hash(bookEntries);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class InlineResponse2004Embedded {\n");
    
    sb.append("    bookEntries: ").append(toIndentedString(bookEntries)).append("\n");
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
