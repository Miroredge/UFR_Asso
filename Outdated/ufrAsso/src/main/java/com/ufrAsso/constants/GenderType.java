package com.ufrAsso.constants;

public enum GenderType {
    M("M", "Male"),
    F("F", "Female"),
    O("O", "Other");

    private String type;
    private String label;

    public String getType() {
        return type;
    }

    public String getLabel() {
        return label;
    }

    private GenderType(String type, String label) {
        this.type = type;
        this.label = label;
    }

    // toString() method
    @Override
    public String toString() {
        return type;
    }

}
