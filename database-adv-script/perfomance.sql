-- Initial complex query with filtering and multiple joins
EXPLAIN ANALYZE
SELECT b.id AS booking_id,
       u.id AS user_id,
       u.name AS user_name,
       p.id AS property_id,
       p.name AS property_name,
       pay.amount AS payment_amount,
       b.start_date,
       b.end_date
FROM bookings b
JOIN users u ON b.user_id = u.id
JOIN properties p ON b.property_id = p.id
JOIN payments pay ON b.id = pay.booking_id
WHERE b.start_date >= '2024-01-01'
  AND pay.status = 'completed';
