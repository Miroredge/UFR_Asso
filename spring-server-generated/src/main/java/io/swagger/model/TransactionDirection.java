package io.swagger.model;

import java.util.Objects;
import io.swagger.v3.oas.annotations.media.Schema;
import com.fasterxml.jackson.annotation.JsonValue;
import org.springframework.validation.annotation.Validated;
import javax.validation.Valid;
import javax.validation.constraints.*;

import com.fasterxml.jackson.annotation.JsonCreator;

/**
 * Direction of the transaction : - INCOME  Amount of money, property, and other transfers of value received. - PAYMENT Amount of money, property, and other transfers of value payed.
 */
public enum TransactionDirection {
  INCOME("INCOME"),
    PAYMENT("PAYMENT");

  private String value;

  TransactionDirection(String value) {
    this.value = value;
  }

  @Override
  @JsonValue
  public String toString() {
    return String.valueOf(value);
  }

  @JsonCreator
  public static TransactionDirection fromValue(String text) {
    for (TransactionDirection b : TransactionDirection.values()) {
      if (String.valueOf(b.value).equals(text)) {
        return b;
      }
    }
    return null;
  }
}
