package org.example;

import org.jetbrains.annotations.NotNull;

public final class DbConstants {
    public static final @NotNull String CONNECTION = "jdbc:postgresql://127.0.0.1:5432/";

    public static final @NotNull String DB_NAME = "migration_test";

    public static final @NotNull String USERNAME = "postgres";

    public static final @NotNull String PASSWORD = "postgres";

    private DbConstants(){}
}
