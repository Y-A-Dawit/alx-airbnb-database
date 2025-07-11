-- 1. INNER JOIN: Get all bookings with the users who made them
SELECT bookings.id AS booking_id,
       users.id AS user_id,
       users.name AS user_name,
       bookings.property_id,
       bookings.start_date,
       bookings.end_date
FROM bookings
INNER JOIN users ON bookings.user_id = users.id;

-- 2. LEFT JOIN: Get all properties with their reviews, including properties without reviews
SELECT properties.id AS property_id,
       properties.name AS property_name,
       reviews.id AS review_id,
       reviews.rating,
       reviews.comment
FROM properties
LEFT JOIN reviews ON properties.id = reviews.property_id;
ORDER BY properties.id;
-- 3. FULL OUTER JOIN: Get all users and bookings, including unmatched users and bookings
SELECT users.id AS user_id,
       users.name AS user_name,
       bookings.id AS booking_id,
       bookings.property_id,
       bookings.start_date,
       bookings.end_date
FROM users
FULL OUTER JOIN bookings ON users.id = bookings.user_id;
