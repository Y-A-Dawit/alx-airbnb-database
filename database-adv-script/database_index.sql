-- BEFORE INDEX: Measure performance of query filtering by user_id
EXPLAIN ANALYZE
SELECT * FROM bookings WHERE user_id = 10;

-- Index on user_id in bookings for frequent WHERE/JOIN use
CREATE INDEX idx_bookings_user_id ON bookings(user_id);

-- AFTER INDEX: Measure performance again
EXPLAIN ANALYZE
SELECT * FROM bookings WHERE user_id = 10;



-- BEFORE INDEX: Measure performance of query filtering by property_id
EXPLAIN ANALYZE
SELECT * FROM bookings WHERE property_id = 5;

-- Index on property_id in bookings for joins
CREATE INDEX idx_bookings_property_id ON bookings(property_id);

-- AFTER INDEX
EXPLAIN ANALYZE
SELECT * FROM bookings WHERE property_id = 5;



-- BEFORE INDEX: Measure performance of filtering by start_date
EXPLAIN ANALYZE
SELECT * FROM bookings WHERE start_date BETWEEN '2024-01-01' AND '2024-01-31';

-- Index on start_date for filtering bookings by date
CREATE INDEX idx_bookings_start_date ON bookings(start_date);

-- AFTER INDEX
EXPLAIN ANALYZE
SELECT * FROM bookings WHERE start_date BETWEEN '2024-01-01' AND '2024-01-31';



-- Index on user email (common search field)
CREATE INDEX idx_users_email ON users(email);

-- Performance measurement for email lookup
EXPLAIN ANALYZE
SELECT * FROM users WHERE email = 'user@example.com';



-- Index on property location (if used in queries)
CREATE INDEX idx_properties_location ON properties(location);

-- Performance measurement for location filter
EXPLAIN ANALYZE
SELECT * FROM properties WHERE location = 'Addis Ababa';
