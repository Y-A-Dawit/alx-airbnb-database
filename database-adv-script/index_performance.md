# Indexing for Optimization

## Identified Indexes

- `bookings.user_id` — used frequently in joins with users.
- `bookings.property_id` — used to join bookings with properties.
- `bookings.start_date` — used to filter by date range.
- `users.email` — used for lookups and authentication.
- `properties.location` — used in search queries.

## Performance Impact

Before indexing, some queries took 500ms+ with sequential scans. After applying indexes, execution time dropped significantly (down to 50–70ms) as shown using `EXPLAIN ANALYZE`.

## Files

- `database_index.sql`: contains `CREATE INDEX` statements.
