# Airbnb Database Schema - SQL DDL

This SQL script defines the database schema for the Airbnb clone project. It includes table creation statements, constraints, indexes, and enumerated types.

## Files

- `schema.sql`: Contains all `CREATE TABLE` statements for the core entities in the system.
- `README.md`: Overview of the SQL design decisions and structure.

## Tables Included

- `users`
- `properties`
- `bookings`
- `payments`
- `reviews`
- `messages`

## Features

- Use of `UUID` as primary keys.
- `ENUM` types for roles, statuses, and payment methods.
- Foreign key constraints with cascading deletes.
- Indexes on key lookup fields (e.g., email, booking_id, property_id).

## Notes

- Designed to be compliant with PostgreSQL.
- All timestamp fields default to the current time.
- `CHECK` constraint ensures valid rating values (1 to 5).
