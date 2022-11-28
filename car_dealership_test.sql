
--good
CREATE TABLE invoice (
    invoice_id SERIAL PRIMARY KEY, 
    staff_id VARCHAR(50),
    customer_id INTEGER,
    store_id VARCHAR(50)
);
--good
CREATE TABLE inventory(
    inventory_id SERIAL PRIMARY KEY,
    product_type VARCHAR(50),
    store_id VARCHAR(50)
);

--good
CREATE TABLE product(
    product_id SERIAL PRIMARY KEY,
    quantity INTEGER, 
    product_type VARCHAR(50),
    condition VARCHAR(50),
    year INTEGER,
    color varchar (20),
    new_or_used VARCHAR(15),
    miles INTEGER,
    inventory_id INTEGER,
    FOREIGN KEY (inventory_id) REFERENCES inventory(inventory_id)
);
--good 
CREATE TABLE payment (
    payment_id SERIAL PRIMARY KEY,
    customer_id INTEGER,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    amount INTEGER,
    invoice_id INTEGER,
    service_ticket INTEGER,
    FOREIGN KEY (invoice_id) REFERENCES invoice(invoice_id)
);
ALTER TABLE payment
ADD FOREIGN KEY (service_ticket) REFERENCES service_ticket(service_ticket);

--good 
CREATE TABLE service_ticket (
    service_ticket SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    store_id VARCHAR(50),
    staff_id INTEGER
);

--good 
CREATE TABLE service_history (
    service_history_ID SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    store_id VARCHAR(50),
    service_ticket INTEGER,
    FOREIGN KEY (service_ticket) REFERENCES service_ticket(service_ticket)
);

CREATE TABLE store(
    store_id SERIAL PRIMARY KEY,
    customer_id INTEGER,
    service_history_ID INTEGER,
    sale_id VARCHAR(50),
    FOREIGN KEY (service_history_ID) REFERENCES service_history(service_history_ID)
);

CREATE TABLE staff (
    staff_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    store_id VARCHAR(50) 
);

CREATE TABLE addresses(
    address_id SERIAL PRIMARY KEY,
    street_id VARCHAR(50),
    city_id VARCHAR(50),
    zip_id VARCHAR(50) 
);

CREATE TABLE customer(
    customer_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    address_id VARCHAR(50),
    phone_num VARCHAR(15),
    email VARCHAR(50), 
    store_id VARCHAR(50)
);

CREATE TABLE sale(
    sale_id SERIAL PRIMARY KEY,
    customer_id INTEGER,
    payment_id VARCHAR(50),
    product_id VARCHAR(50),
    staff_id INTEGER
);

ALTER TABLE sale
ADD FOREIGN KEY (customer_id) REFERENCES customer(customer_id);

ALTER TABLE sale -- wont work?
ADD FOREIGN KEY (payment_id) REFERENCES payment(payment_id);

ALTER TABLE sale
ADD FOREIGN KEY (product_id) REFERENCES product(product_id);

ALTER TABLE sale
ADD FOREIGN KEY (staff_id) REFERENCES staff(staff_id);

