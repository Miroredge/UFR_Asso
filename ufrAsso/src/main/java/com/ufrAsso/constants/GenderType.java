package com.ufrAsso.constants;

public enum GenderType {
    M("Male"),
    F("Female"),
    O("Other");

    private String type;

    public String getType() {
        return type;
    }

    private GenderType(String type) {
        this.type = type;
    }

    // toString() method
    @Override
    public String toString() {
        return type;
    }

}
