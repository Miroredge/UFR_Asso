package io.swagger.model;

import java.util.Objects;
import io.swagger.v3.oas.annotations.media.Schema;
import com.fasterxml.jackson.annotation.JsonValue;
import org.springframework.validation.annotation.Validated;
import javax.validation.Valid;
import javax.validation.constraints.*;

import com.fasterxml.jackson.annotation.JsonCreator;

/**
 * Mode of payment used for the transaction - CASH          Payment by cash. - CHECK         Payment using a check. - BANK_TRANSFER Bank transfer from account to account. - CREDIT_CARD   Operation done with credit card. - DEBIT_CARD    Operation with a debit card. - INTERNET      Payment using an Internet account (Paypal, ...). - CRYPTO        Payment using a crypto-currency (Bitcoin, Ethereum, ...). - OTHER         Any other mean of transfert not listed.
 */
public enum ModeOfPayment {
  CASH("CASH"),
    CHECK("CHECK"),
    BANK_TRANSFER("BANK_TRANSFER"),
    CREDIT_CARD("CREDIT_CARD"),
    DEBIT_CARD("DEBIT_CARD"),
    INTERNET("INTERNET"),
    CRYPTO("CRYPTO"),
    OTHER("OTHER");

  private String value;

  ModeOfPayment(String value) {
    this.value = value;
  }

  @Override
  @JsonValue
  public String toString() {
    return String.valueOf(value);
  }

  @JsonCreator
  public static ModeOfPayment fromValue(String text) {
    for (ModeOfPayment b : ModeOfPayment.values()) {
      if (String.valueOf(b.value).equals(text)) {
        return b;
      }
    }
    return null;
  }
}
