package org.example;

import org.flywaydb.core.Flyway;

public class Main {
    public static void main(String[] args) {
        final var flyway = Flyway
                .configure()
                .dataSource(DbConstants.CONNECTION + DbConstants.DB_NAME, DbConstants.USERNAME, DbConstants.PASSWORD)
                .locations("db")
                .load();
        flyway.migrate();
        System.out.println("Migrations applied successfully");
    }
}