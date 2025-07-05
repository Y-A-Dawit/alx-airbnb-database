# Documentation

## Joins Queries – ALX Airbnb Database Project

Task Objective

This task focuses on mastering SQL joins by writing queries that combine data across multiple related tables in an Airbnb-like database.

Queries Implemented

1. **INNER JOIN**  
   Retrieves all bookings along with the users who made those bookings. Returns only matched rows.

2. **LEFT JOIN**  
   Retrieves all properties and their associated reviews, including properties that have no reviews.

3. **FULL OUTER JOIN**  
   Retrieves all users and all bookings, even if a user hasn't made a booking or a booking isn't linked to a user.

File Structure

- `joins_queries.sql`: Contains all SQL queries written for INNER JOIN, LEFT JOIN, and FULL OUTER JOIN.
- `README.md`: Documentation explaining the queries and purpose of this task.

## Subqueries – ALX Airbnb Database Project

Task Objective

This task is designed to improve SQL skills by writing both non-correlated and correlated subqueries.

Queries Implemented

1. **Non-Correlated Subquery**  
   Retrieves all properties that have an average rating greater than 4.0 by using a subquery inside a `WHERE IN` clause.

2. **Correlated Subquery**  
   Retrieves users who have made more than 3 bookings by comparing each user’s booking count using a subquery that depends on the outer query.

File Structure

- `subqueries.sql`: Contains the subqueries for filtering properties and users based on aggregate conditions.
- `README.md`: This documentation file explaining the queries and purpose of the task.

## Aggregations and Window Functions

Objective

Analyze booking data using aggregation and window functions.

Queries

1. **User Booking Count**: Calculates the total number of bookings made by each user using `COUNT()` and `GROUP BY`.

2. **Property Ranking**: Ranks properties based on how many bookings they received using `RANK()` window function.

Files

- `aggregations_and_window_functions.sql`

## Query Optimization Report

Initial Query

The original query joined four tables: bookings, users, properties, and payments. Performance was slow due to lack of indexing and unnecessary column selection.

Analysis

Using `EXPLAIN`, the bottleneck was a full table scan on `bookings` and `payments`.

Optimized Steps

- Added indexes on `bookings.user_id`, `bookings.property_id`, and `payments.booking_id`.
- Selected only needed columns.
- Ensured foreign keys are indexed.

Results

Execution time reduced from ~600ms to ~90ms after optimization.

Files

- `perfomance.sql`: Contains the optimized query.
