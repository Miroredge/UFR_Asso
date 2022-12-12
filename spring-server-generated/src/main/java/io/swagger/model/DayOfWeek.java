package io.swagger.model;

import java.util.Objects;
import io.swagger.v3.oas.annotations.media.Schema;
import com.fasterxml.jackson.annotation.JsonValue;
import org.springframework.validation.annotation.Validated;
import javax.validation.Valid;
import javax.validation.constraints.*;

import com.fasterxml.jackson.annotation.JsonCreator;

/**
 * List of the name of the days in a week  - MONDAY    The day of week named Monday. - TUESDAY   The day of week named Tuesday. - WEDNESDAY The day of week named Wednesday. - THURSDAY  The day of week named Thursday. - FRIDAY    The day of week named Friday. - SATURDAY The day of week named Saturday. - SUNDAY    The day of week named Sunday.
 */
public enum DayOfWeek {
  MONDAY("MONDAY"),
    TUESDAY("TUESDAY"),
    WEDNESDAY("WEDNESDAY"),
    THURSDAY("THURSDAY"),
    FRIDAY("FRIDAY"),
    SATURDAY("SATURDAY"),
    SUNDAY("SUNDAY");

  private String value;

  DayOfWeek(String value) {
    this.value = value;
  }

  @Override
  @JsonValue
  public String toString() {
    return String.valueOf(value);
  }

  @JsonCreator
  public static DayOfWeek fromValue(String text) {
    for (DayOfWeek b : DayOfWeek.values()) {
      if (String.valueOf(b.value).equals(text)) {
        return b;
      }
    }
    return null;
  }
}
