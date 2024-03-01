CREATE TABLE phone
(
    phone_id     int PRIMARY KEY,
    country_code INT NOT NULL,
    phone_number INT NOT NULL,
    phone_type   VARCHAR(12) CHECK ( phone_type in ('home', 'office', 'other'))
);

ALTER TABLE address
    DROP column phone;

ALTER TABLE customer
    ADD phone_id INT;

ALTER TABLE customer
    ADD FOREIGN KEY (phone_id) REFERENCES phone (phone_id)
    ON DELETE SET NULL
    ON UPDATE CASCADE;

ALTER TABLE staff
    ADD phone_id INT;

ALTER TABLE staff
    ADD FOREIGN KEY (phone_id) REFERENCES phone (phone_id)
    ON DELETE SET NULL
    ON UPDATE CASCADE;

ALTER TABLE store
    ADD phone_id INT;

ALTER TABLE store
    ADD FOREIGN KEY (phone_id) REFERENCES phone (phone_id)
    ON DELETE SET NULL
    ON UPDATE CASCADE;
/*
 4.13 LAB - Implement strong entity (Sakila)
Implement a new strong entity phone in the Sakila database. Attributes and relationships are shown in the following diagram:

The diagram has four entities and three relationships. The entities are phone, store, staff, and customer. Phone has attributes phone_id R U, country_code R, phone_number R, and phone_type. Store, staff, and customer have no attributes. The relationships are store-has-phone, staff-has-phone, and customer-has-phone. All relationships have cardinality one-one maximum and zero-zero minimum.

The diagram uses Sakila naming conventions. Follow the Sakila conventions for your table and column names:

All lower case
Underscore separator between root and suffix
Foreign keys have the same name as referenced primary key
Write CREATE TABLE and ALTER TABLE statements that:

Implement the entity as a new phone table.
Implement the has relationships as foreign keys in the Sakila customer, staff, and store tables.
Remove the existing phone column from the Sakila address table.
Step 2 requires adding a foreign key constraint to an existing table. Ex:

ALTER TABLE customer
  ADD FOREIGN KEY (phone_id) REFERENCES phone(phone_id)
  ON DELETE SET NULL
  ON UPDATE CASCADE;
Specify data types as follows:

phone_id, phone_number, and country_code have data type INT.
phone_type has data type VARCHAR(12) and contains strings like 'Home', 'Mobile', and 'Other'.
Apply these constraints:

NOT NULL constraints correspond to cardinalities on the diagram above.
Foreign key actions are SET NULL for delete rules and CASCADE for update rules.
Specify a suitable column as the phone table primary key.
 */