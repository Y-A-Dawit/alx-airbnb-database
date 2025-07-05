# Database Performance Monitoring

## Tools Used

- `EXPLAIN ANALYZE` — to observe query execution plans.
- `SHOW PROFILE` — to analyze query stages (MySQL).
- Indexed columns and optimized queries based on these tools.

## Observations

- Full table scans were the major cause of slowness.
- JOIN-heavy queries benefited most from indexing.
- Using `LIMIT`, `SELECT specific columns`, and `WHERE` conditions helped reduce execution time.

## Improvements Made

- Added indexes to bookings, users, and properties.
- Partitioned the `bookings` table by date.
- Refactored queries to remove redundant joins.

## Outcome

Average query time reduced by 60–85% across tested queries.

## Suggested Future Improvements

- Add caching for frequently accessed summary data.
- Monitor slow query logs regularly.
