-- Index on user_id in bookings for frequent WHERE/JOIN use
CREATE INDEX idx_bookings_user_id ON bookings(user_id);

-- Index on property_id in bookings for joins
CREATE INDEX idx_bookings_property_id ON bookings(property_id);

-- Index on start_date for filtering bookings by date
CREATE INDEX idx_bookings_start_date ON bookings(start_date);

-- Index on user email (common search field)
CREATE INDEX idx_users_email ON users(email);

-- Index on property location (if used in queries)
CREATE INDEX idx_properties_location ON properties(location);
