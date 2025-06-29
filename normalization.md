# Normalization of Airbnb Database Schema

## Objective

Ensure that the database schema for the Airbnb project satisfies the Third Normal Form (3NF) by eliminating redundancy and ensuring data integrity.

---

## Step 1: First Normal Form (1NF)

- All attributes are atomic (e.g., no multiple phone numbers or array-type fields).
- Each table has a defined primary key (UUIDs).
- No repeating groups or nested records.

✅ **Passed 1NF**

---

## Step 2: Second Normal Form (2NF)

- All tables have single-column primary keys.
- No partial dependencies exist on composite keys, as there are no composite keys.
- All non-key attributes depend entirely on the primary key.

✅ **Passed 2NF**

---

## Step 3: Third Normal Form (3NF)

- No transitive dependencies.
- All non-key attributes depend directly and solely on the primary key.
- Example: `User.email` depends only on `user_id`, not on `first_name` or other fields.

✅ **Passed 3NF**

---

## Optional Improvements (Beyond 3NF)

- Consider creating separate lookup tables for ENUM types (`role`, `status`, `payment_method`) to allow for easier management and extensibility.
- Example:
  - `UserRole(role_id, role_name)`
  - `PaymentMethod(method_id, method_name)`

---

## Conclusion

The current Airbnb database schema is normalized up to **Third Normal Form (3NF)**. It is optimized for minimal redundancy and ensures data integrity across all relationships.
