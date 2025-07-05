# Query Optimization Report

## Initial Query

The original query joined four tables: bookings, users, properties, and payments. Performance was slow due to lack of indexing and unnecessary column selection.

## Analysis

Using `EXPLAIN`, the bottleneck was a full table scan on `bookings` and `payments`.

## Optimized Steps

- Added indexes on `bookings.user_id`, `bookings.property_id`, and `payments.booking_id`.
- Selected only needed columns.
- Ensured foreign keys are indexed.

## Results

Execution time reduced from ~600ms to ~90ms after optimization.

## Files

- `perfomance.sql`: Contains the optimized query.
