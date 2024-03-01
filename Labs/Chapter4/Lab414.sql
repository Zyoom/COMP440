CREATE TABLE person (
    person_id SMALLINT UNSIGNED NOT NULL,
    first_name VARCHAR(20),
    last_name VARCHAR(20),
    email VARCHAR(20),
    address_id SMALLINT UNSIGNED NOT NULL,
    active VARCHAR(20),
    last_update TIMESTAMP,
    PRIMARY KEY (person_id),
    FOREIGN KEY (address_id) REFERENCES address (address_id) ON DELETE RESTRICT ON UPDATE RESTRICT
);

CREATE TABLE customer (
    person_id SMALLINT UNSIGNED NOT NULL,
    create_date TIMESTAMP,
    PRIMARY KEY (person_id),
    FOREIGN KEY (person_id) REFERENCES person (person_id) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE staff (
    person_id SMALLINT UNSIGNED NOT NULL,
    picture BLOB,
    username VARCHAR(20),
    password VARCHAR(20),
    store_id TINYINT UNSIGNED NOT NULL,
    PRIMARY KEY (person_id),
    FOREIGN KEY (person_id) REFERENCES person (person_id) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (store_id) REFERENCES store (store_id) ON DELETE RESTRICT ON UPDATE RESTRICT
);


/*
 4.14 LAB - Implement supertype and subtype entities (Sakila)
Similar entities have many common attributes and relationships. Similar entities are often converted into subtypes of a supertype entity, as illustrated in this lab.

In the Sakila database, the customer and staff tables have several common columns. Convert these tables into subtypes of person. Specifically, write CREATE TABLE statements for person, customer, and staff that implement this ER diagram:

The diagram has five entities and two relationships. The entities are person, staff, customer, address, and store. Person is a super type entity, with subtypes staff and customer. Staff appears above customer, within person. Address and store appear outside person. Person has attributes person_id R U, first_name, last_name, email, active, and last_update. Staff has attributes person_id R U, picture, username, and password. Customer has attributes person_id R U and create_date. Address and store have no attributes. Relationship address-belongs_to-person has cardinality one-many maximum and one-zero minimum. Relationship staff-works_at-store has cardinality many-one maximum and zero-one minimum.

Follow Sakila conventions for table and column names:

All lower case
Underscore separator between root and suffix
Foreign keys have the same name as referenced primary key
Implement attributes as columns:

The primary key of all three tables is person_id with data type SMALLINT UNSIGNED.
The last_update and create_date columns have data type TIMESTAMP.
The picture column has data type BLOB.
All other columns have data type VARCHAR(20).
Implement the belongs_to and works_at relationships as foreign keys:

belongs_to becomes an address_id foreign key in person with data type SMALLINT UNSIGNED.
works_at becomes a store_id foreign key in staff with data type TINYINT UNSIGNED.
Specify RESTRICT actions for both foreign keys.
Required relationships become NOT NULL foreign keys.
Subtype entities have an IsA relationship to the supertype. Implement these relationships as foreign keys:

The person_id columns of customer and staff become foreign keys referring to person.
Specify CASCADE actions for both foreign keys.
NOTE: If you execute your solution with the Sakila database, you must first drop customer, staff, and all constraints that refer to these tables. Use the following statements with Sakila only, not in the zyLab environment:

ALTER TABLE payment
   DROP CONSTRAINT fk_payment_customer,
   DROP CONSTRAINT fk_payment_staff;
ALTER TABLE rental
   DROP CONSTRAINT fk_rental_customer,
   DROP CONSTRAINT fk_rental_staff;
ALTER TABLE store
   DROP CONSTRAINT fk_store_staff;
DROP TABLE customer, staff;
 */