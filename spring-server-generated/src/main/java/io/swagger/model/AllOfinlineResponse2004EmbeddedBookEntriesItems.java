package io.swagger.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import io.swagger.model.BookEntry;
import io.swagger.model.ModeOfPayment;
import io.swagger.model.TransactionDirection;
import io.swagger.v3.oas.annotations.media.Schema;
import org.threeten.bp.OffsetDateTime;
import org.springframework.validation.annotation.Validated;
import javax.validation.Valid;
import javax.validation.constraints.*;

/**
 * AllOfinlineResponse2004EmbeddedBookEntriesItems
 */
@Validated
@javax.annotation.Generated(value = "io.swagger.codegen.v3.generators.java.SpringCodegen", date = "2022-12-12T07:32:15.929Z[GMT]")


public class AllOfinlineResponse2004EmbeddedBookEntriesItems   {
  @JsonProperty("operationDateTime")
  private OffsetDateTime operationDateTime = null;

  @JsonProperty("mode")
  private ModeOfPayment mode = null;

  @JsonProperty("description")
  private String description = null;

  @JsonProperty("type")
  private TransactionDirection type = null;

  @JsonProperty("amount")
  private Float amount = null;

  public AllOfinlineResponse2004EmbeddedBookEntriesItems operationDateTime(OffsetDateTime operationDateTime) {
    this.operationDateTime = operationDateTime;
    return this;
  }

  /**
   * Date/Time of the operation - UTC Date/Time - Format (ISO 8601) YYYY-MM-DDTHH24:MI:SSZ
   * @return operationDateTime
   **/
  @Schema(example = "2019-09-19T03:30Z", required = true, description = "Date/Time of the operation - UTC Date/Time - Format (ISO 8601) YYYY-MM-DDTHH24:MI:SSZ")
      @NotNull

    @Valid
    public OffsetDateTime getOperationDateTime() {
    return operationDateTime;
  }

  public void setOperationDateTime(OffsetDateTime operationDateTime) {
    this.operationDateTime = operationDateTime;
  }

  public AllOfinlineResponse2004EmbeddedBookEntriesItems mode(ModeOfPayment mode) {
    this.mode = mode;
    return this;
  }

  /**
   * Get mode
   * @return mode
   **/
  @Schema(required = true, description = "")
      @NotNull

    @Valid
    public ModeOfPayment getMode() {
    return mode;
  }

  public void setMode(ModeOfPayment mode) {
    this.mode = mode;
  }

  public AllOfinlineResponse2004EmbeddedBookEntriesItems description(String description) {
    this.description = description;
    return this;
  }

  /**
   * Description of the operation
   * @return description
   **/
  @Schema(example = "Rent A Car - Renault Scenic (953 kms)", required = true, description = "Description of the operation")
      @NotNull

    public String getDescription() {
    return description;
  }

  public void setDescription(String description) {
    this.description = description;
  }

  public AllOfinlineResponse2004EmbeddedBookEntriesItems type(TransactionDirection type) {
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
    public TransactionDirection getType() {
    return type;
  }

  public void setType(TransactionDirection type) {
    this.type = type;
  }

  public AllOfinlineResponse2004EmbeddedBookEntriesItems amount(Float amount) {
    this.amount = amount;
    return this;
  }

  /**
   * Amount of the operation (> 0) (Currency : Euro)
   * minimum: 0
   * @return amount
   **/
  @Schema(example = "315.14", required = true, description = "Amount of the operation (> 0) (Currency : Euro)")
      @NotNull

  @DecimalMin("0")  public Float getAmount() {
    return amount;
  }

  public void setAmount(Float amount) {
    this.amount = amount;
  }


  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    AllOfinlineResponse2004EmbeddedBookEntriesItems allOfinlineResponse2004EmbeddedBookEntriesItems = (AllOfinlineResponse2004EmbeddedBookEntriesItems) o;
    return Objects.equals(this.operationDateTime, allOfinlineResponse2004EmbeddedBookEntriesItems.operationDateTime) &&
        Objects.equals(this.mode, allOfinlineResponse2004EmbeddedBookEntriesItems.mode) &&
        Objects.equals(this.description, allOfinlineResponse2004EmbeddedBookEntriesItems.description) &&
        Objects.equals(this.type, allOfinlineResponse2004EmbeddedBookEntriesItems.type) &&
        Objects.equals(this.amount, allOfinlineResponse2004EmbeddedBookEntriesItems.amount);
  }

  @Override
  public int hashCode() {
    return Objects.hash(operationDateTime, mode, description, type, amount);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class AllOfinlineResponse2004EmbeddedBookEntriesItems {\n");
    
    sb.append("    operationDateTime: ").append(toIndentedString(operationDateTime)).append("\n");
    sb.append("    mode: ").append(toIndentedString(mode)).append("\n");
    sb.append("    description: ").append(toIndentedString(description)).append("\n");
    sb.append("    type: ").append(toIndentedString(type)).append("\n");
    sb.append("    amount: ").append(toIndentedString(amount)).append("\n");
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
