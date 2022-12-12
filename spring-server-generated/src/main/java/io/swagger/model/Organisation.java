package io.swagger.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import io.swagger.v3.oas.annotations.media.Schema;
import org.springframework.validation.annotation.Validated;
import javax.validation.Valid;
import javax.validation.constraints.*;

/**
 * Details associated to an Organisation
 */
@Schema(description = "Details associated to an Organisation")
@Validated
@javax.annotation.Generated(value = "io.swagger.codegen.v3.generators.java.SpringCodegen", date = "2022-12-12T07:32:15.929Z[GMT]")


public class Organisation   {
  @JsonProperty("siretNumber")
  private String siretNumber = null;

  @JsonProperty("name")
  private String name = null;

  @JsonProperty("location")
  private String location = null;

  @JsonProperty("logo")
  private byte[] logo = null;

  @JsonProperty("memberPrice")
  private Float memberPrice = null;

  public Organisation siretNumber(String siretNumber) {
    this.siretNumber = siretNumber;
    return this;
  }

  /**
   * Unique ID of the Organisation (https://en.wikipedia.org/wiki/SIRET_code)
   * @return siretNumber
   **/
  @Schema(example = "12482313546354", required = true, description = "Unique ID of the Organisation (https://en.wikipedia.org/wiki/SIRET_code)")
      @NotNull

  @Size(min=14,max=14)   public String getSiretNumber() {
    return siretNumber;
  }

  public void setSiretNumber(String siretNumber) {
    this.siretNumber = siretNumber;
  }

  public Organisation name(String name) {
    this.name = name;
    return this;
  }

  /**
   * Name of the 'Organisation'
   * @return name
   **/
  @Schema(example = "ABEI (Universit� de Blois)", required = true, description = "Name of the 'Organisation'")
      @NotNull

  @Size(min=1,max=45)   public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
  }

  public Organisation location(String location) {
    this.location = location;
    return this;
  }

  /**
   * Location of the office of the Organisation
   * @return location
   **/
  @Schema(example = "Blois", description = "Location of the office of the Organisation")
  
  @Size(min=1,max=45)   public String getLocation() {
    return location;
  }

  public void setLocation(String location) {
    this.location = location;
  }

  public Organisation logo(byte[] logo) {
    this.logo = logo;
    return this;
  }

  /**
   * Logo of the Organisation
   * @return logo
   **/
  @Schema(example = "[B@d22c2e7", description = "Logo of the Organisation")
  
    public byte[] getLogo() {
    return logo;
  }

  public void setLogo(byte[] logo) {
    this.logo = logo;
  }

  public Organisation memberPrice(Float memberPrice) {
    this.memberPrice = memberPrice;
    return this;
  }

  /**
   * Price of the membership (Currency : Euro)
   * minimum: 0
   * @return memberPrice
   **/
  @Schema(example = "3.14159", required = true, description = "Price of the membership (Currency : Euro)")
      @NotNull

  @DecimalMin("0")  public Float getMemberPrice() {
    return memberPrice;
  }

  public void setMemberPrice(Float memberPrice) {
    this.memberPrice = memberPrice;
  }


  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    Organisation organisation = (Organisation) o;
    return Objects.equals(this.siretNumber, organisation.siretNumber) &&
        Objects.equals(this.name, organisation.name) &&
        Objects.equals(this.location, organisation.location) &&
        Objects.equals(this.logo, organisation.logo) &&
        Objects.equals(this.memberPrice, organisation.memberPrice);
  }

  @Override
  public int hashCode() {
    return Objects.hash(siretNumber, name, location, logo, memberPrice);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class Organisation {\n");
    
    sb.append("    siretNumber: ").append(toIndentedString(siretNumber)).append("\n");
    sb.append("    name: ").append(toIndentedString(name)).append("\n");
    sb.append("    location: ").append(toIndentedString(location)).append("\n");
    sb.append("    logo: ").append(toIndentedString(logo)).append("\n");
    sb.append("    memberPrice: ").append(toIndentedString(memberPrice)).append("\n");
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
