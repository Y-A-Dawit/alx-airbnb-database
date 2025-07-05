# Partitioning Performance Report

## Objective

Improve performance for large `bookings` table by partitioning based on `start_date`.

## Implementation

Used PostgreSQL range partitioning with monthly slices for 2024.

## Results

Queries filtering by date range improved from ~700ms to ~100ms due to scanning only relevant partitions.

## Files

- `partitioning.sql`: Contains the partitioning setup.
