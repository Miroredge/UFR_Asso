package io.swagger.model;

import java.util.Objects;
import io.swagger.v3.oas.annotations.media.Schema;
import com.fasterxml.jackson.annotation.JsonValue;
import org.springframework.validation.annotation.Validated;
import javax.validation.Valid;
import javax.validation.constraints.*;

import com.fasterxml.jackson.annotation.JsonCreator;

/**
 * Role that can be granted to a 'User' in an 'Organisation'
 */
public enum RoleType {
  ADMIN("ADMIN"),
    PRESIDENT("PRESIDENT"),
    VICE_PRESIDENT("VICE-PRESIDENT"),
    SECREATARY("SECREATARY"),
    TREASURER("TREASURER"),
    MEMBER("MEMBER"),
    CANDIDATE("CANDIDATE"),
    REFUSED("REFUSED");

  private String value;

  RoleType(String value) {
    this.value = value;
  }

  @Override
  @JsonValue
  public String toString() {
    return String.valueOf(value);
  }

  @JsonCreator
  public static RoleType fromValue(String text) {
    for (RoleType b : RoleType.values()) {
      if (String.valueOf(b.value).equals(text)) {
        return b;
      }
    }
    return null;
  }
}
