-- Insert Users
INSERT INTO users (user_id, first_name, last_name, email, password_hash, phone_number, role)
VALUES 
  ('11111111-1111-1111-1111-111111111111', 'Alice', 'Walker', 'alice@example.com', 'hashed_pw1', '1234567890', 'host'),
  ('22222222-2222-2222-2222-222222222222', 'Bob', 'Smith', 'bob@example.com', 'hashed_pw2', '0987654321', 'guest'),
  ('33333333-3333-3333-3333-333333333333', 'Charlie', 'Johnson', 'charlie@example.com', 'hashed_pw3', NULL, 'guest');

-- Insert Properties
INSERT INTO properties (property_id, host_id, name, description, location, pricepernight)
VALUES 
  ('aaaaaaa1-aaaa-aaaa-aaaa-aaaaaaaaaaaa', '11111111-1111-1111-1111-111111111111', 'Cozy Cabin', 'A peaceful cabin in the woods', 'Lake Tahoe', 120.00),
  ('aaaaaaa2-aaaa-aaaa-aaaa-aaaaaaaaaaaa', '11111111-1111-1111-1111-111111111111', 'Urban Apartment', 'Modern apartment in the city center', 'New York City', 200.00);

-- Insert Bookings
INSERT INTO bookings (booking_id, property_id, user_id, start_date, end_date, total_price, status)
VALUES
  ('bbbbbbb1-bbbb-bbbb-bbbb-bbbbbbbbbbbb', 'aaaaaaa1-aaaa-aaaa-aaaa-aaaaaaaaaaaa', '22222222-2222-2222-2222-222222222222', '2025-07-01', '2025-07-05', 480.00, 'confirmed'),
  ('bbbbbbb2-bbbb-bbbb-bbbb-bbbbbbbbbbbc', 'aaaaaaa2-aaaa-aaaa-aaaa-aaaaaaaaaaaa', '33333333-3333-3333-3333-333333333333', '2025-08-10', '2025-08-15', 1000.00, 'pending');

-- Insert Payments
INSERT INTO payments (payment_id, booking_id, amount, payment_method)
VALUES
  ('ppppppp1-pppp-pppp-pppp-pppppppppppp', 'bbbbbbb1-bbbb-bbbb-bbbb-bbbbbbbbbbbb', 480.00, 'credit_card');

-- Insert Reviews
INSERT INTO reviews (review_id, property_id, user_id, rating, comment)
VALUES
  ('rrrrrrr1-rrrr-rrrr-rrrr-rrrrrrrrrrrr', 'aaaaaaa1-aaaa-aaaa-aaaa-aaaaaaaaaaaa', '22222222-2222-2222-2222-222222222222', 5, 'Great stay, would come again!'),
  ('rrrrrrr2-rrrr-rrrr-rrrr-rrrrrrrrrrrr', 'aaaaaaa2-aaaa-aaaa-aaaa-aaaaaaaaaaaa', '33333333-3333-3333-3333-333333333333', 4, 'Nice place but a bit noisy.');

-- Insert Messages
INSERT INTO messages (message_id, sender_id, recipient_id, message_body)
VALUES
  ('mmmmmmm1-mmmm-mmmm-mmmm-mmmmmmmmmmmm', '22222222-2222-2222-2222-222222222222', '11111111-1111-1111-1111-111111111111', 'Hi, is the cabin available in early July?'),
  ('mmmmmmm2-mmmm-mmmm-mmmm-mmmmmmmmmmmm', '11111111-1111-1111-1111-111111111111', '22222222-2222-2222-2222-222222222222', 'Yes, the cabin is available from July 1–5.');
