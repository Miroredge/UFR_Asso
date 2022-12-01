package com.ufrAsso.config;

import org.hibernate.dialect.MySQL8Dialect;
import org.hibernate.dialect.function.StandardSQLFunction;
import org.hibernate.type.StandardBasicTypes;

public class CustomSQLDialect extends MySQL8Dialect {
    public CustomSQLDialect() {
        super();

        registerFunction(
                "generateId_Event",
                new StandardSQLFunction(
                        "generateId_Event",
                        StandardBasicTypes.STRING));
    }
}