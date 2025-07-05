-- Compare ROW_NUMBER and RANK side by side
SELECT property_id,
       COUNT(*) AS booking_count,
       ROW_NUMBER() OVER (ORDER BY COUNT(*) DESC) AS row_number,
       RANK() OVER (ORDER BY COUNT(*) DESC) AS rank
FROM bookings
GROUP BY property_id;
