package io.swagger.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import io.swagger.model.ErrorLevel;
import io.swagger.model.ErrorType;
import io.swagger.v3.oas.annotations.media.Schema;
import java.util.ArrayList;
import java.util.List;
import org.springframework.validation.annotation.Validated;
import javax.validation.Valid;
import javax.validation.constraints.*;

/**
 * Error item
 */
@Schema(description = "Error item")
@Validated
@javax.annotation.Generated(value = "io.swagger.codegen.v3.generators.java.SpringCodegen", date = "2022-12-12T07:32:15.929Z[GMT]")


public class Error   {
  @JsonProperty("errorCode")
  private String errorCode = null;

  @JsonProperty("errorMessage")
  private String errorMessage = null;

  @JsonProperty("errorParams")
  @Valid
  private List<String> errorParams = null;

  @JsonProperty("errorLevel")
  private ErrorLevel errorLevel = null;

  @JsonProperty("errorType")
  private ErrorType errorType = null;

  @JsonProperty("documentationUrl")
  private String documentationUrl = null;

  @JsonProperty("tips")
  private String tips = null;

  public Error errorCode(String errorCode) {
    this.errorCode = errorCode;
    return this;
  }

  /**
   * Error technical Code (can be different than the HTTP return code)
   * @return errorCode
   **/
  @Schema(example = "MYSQL-2345", required = true, description = "Error technical Code (can be different than the HTTP return code)")
      @NotNull

  @Size(max=50)   public String getErrorCode() {
    return errorCode;
  }

  public void setErrorCode(String errorCode) {
    this.errorCode = errorCode;
  }

  public Error errorMessage(String errorMessage) {
    this.errorMessage = errorMessage;
    return this;
  }

  /**
   * Message describing the error (Do not give too much information, to avoid security breach)
   * @return errorMessage
   **/
  @Schema(example = "MYSQL - Error during Creation of Updatable Snapshot", required = true, description = "Message describing the error (Do not give too much information, to avoid security breach)")
      @NotNull

    public String getErrorMessage() {
    return errorMessage;
  }

  public void setErrorMessage(String errorMessage) {
    this.errorMessage = errorMessage;
  }

  public Error errorParams(List<String> errorParams) {
    this.errorParams = errorParams;
    return this;
  }

  public Error addErrorParamsItem(String errorParamsItem) {
    if (this.errorParams == null) {
      this.errorParams = new ArrayList<String>();
    }
    this.errorParams.add(errorParamsItem);
    return this;
  }

  /**
   * Parameters used between '{' and '}' in the errorMessage
   * @return errorParams
   **/
  @Schema(example = "[\"T124Z\",\"G18A8\"]", description = "Parameters used between '{' and '}' in the errorMessage")
  
    public List<String> getErrorParams() {
    return errorParams;
  }

  public void setErrorParams(List<String> errorParams) {
    this.errorParams = errorParams;
  }

  public Error errorLevel(ErrorLevel errorLevel) {
    this.errorLevel = errorLevel;
    return this;
  }

  /**
   * Get errorLevel
   * @return errorLevel
   **/
  @Schema(description = "")
  
    @Valid
    public ErrorLevel getErrorLevel() {
    return errorLevel;
  }

  public void setErrorLevel(ErrorLevel errorLevel) {
    this.errorLevel = errorLevel;
  }

  public Error errorType(ErrorType errorType) {
    this.errorType = errorType;
    return this;
  }

  /**
   * Get errorType
   * @return errorType
   **/
  @Schema(description = "")
  
    @Valid
    public ErrorType getErrorType() {
    return errorType;
  }

  public void setErrorType(ErrorType errorType) {
    this.errorType = errorType;
  }

  public Error documentationUrl(String documentationUrl) {
    this.documentationUrl = documentationUrl;
    return this;
  }

  /**
   * Url of the documentation associated to the error
   * @return documentationUrl
   **/
  @Schema(example = "http://www.google.fr", description = "Url of the documentation associated to the error")
  
    public String getDocumentationUrl() {
    return documentationUrl;
  }

  public void setDocumentationUrl(String documentationUrl) {
    this.documentationUrl = documentationUrl;
  }

  public Error tips(String tips) {
    this.tips = tips;
    return this;
  }

  /**
   * Tips/help for adressing the error
   * @return tips
   **/
  @Schema(example = "Google can help you to find how to solve this issue", description = "Tips/help for adressing the error")
  
    public String getTips() {
    return tips;
  }

  public void setTips(String tips) {
    this.tips = tips;
  }


  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    Error error = (Error) o;
    return Objects.equals(this.errorCode, error.errorCode) &&
        Objects.equals(this.errorMessage, error.errorMessage) &&
        Objects.equals(this.errorParams, error.errorParams) &&
        Objects.equals(this.errorLevel, error.errorLevel) &&
        Objects.equals(this.errorType, error.errorType) &&
        Objects.equals(this.documentationUrl, error.documentationUrl) &&
        Objects.equals(this.tips, error.tips);
  }

  @Override
  public int hashCode() {
    return Objects.hash(errorCode, errorMessage, errorParams, errorLevel, errorType, documentationUrl, tips);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class Error {\n");
    
    sb.append("    errorCode: ").append(toIndentedString(errorCode)).append("\n");
    sb.append("    errorMessage: ").append(toIndentedString(errorMessage)).append("\n");
    sb.append("    errorParams: ").append(toIndentedString(errorParams)).append("\n");
    sb.append("    errorLevel: ").append(toIndentedString(errorLevel)).append("\n");
    sb.append("    errorType: ").append(toIndentedString(errorType)).append("\n");
    sb.append("    documentationUrl: ").append(toIndentedString(documentationUrl)).append("\n");
    sb.append("    tips: ").append(toIndentedString(tips)).append("\n");
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
