# Airbnb Database Seed Data

This SQL script inserts sample data into the Airbnb database for development and testing.

## Files

- `seed.sql`: Contains SQL `INSERT` statements for all major entities.

## Sample Data Overview

### Users

- 3 users (1 host, 2 guests)
- Includes email, phone number, and roles

### Properties

- 2 properties listed by the host

### Bookings

- 2 bookings by different users
- Various statuses (confirmed, pending)

### Payments

- 1 successful payment linked to a confirmed booking

### Reviews

- 2 reviews from guests who stayed at the properties

### Messages

- Simulated conversation between a guest and host

## Notes

- UUIDs are hardcoded for consistency in development.
- Data values are realistic and cover key relationships.
