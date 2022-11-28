
SELECT *
from sale;


INSERT INTO addresses(
    address_id,
    street_id,
    city_id,
    zip_id
)
VALUES (
    001,
    'Southwest Airlines ave',
    'Grand Rapids',
    '49428'
);

INSERT INTO addresses(
    address_id,
    street_id,
    city_id,
    zip_id
)
VALUES (
    002,
    '3200 Michigan Ave.',
    'Lansing',
    '48428'
);

INSERT INTO customer(
    customer_id,
    first_name,
    last_name,
    address_id,
    phone_num,
    email,
    store_id
)
VALUES (
    '001',
    'Regina',
    'George',
    '3200 Michigan Ave.',
    '312.771.4959',
    'RG@live.com',
    '101'
);

INSERT INTO customer(
    customer_id,
    first_name,
    last_name,
    address_id,
    phone_num,
    email,
    store_id
)
VALUES (
    '002',
    'Jack',
    'Smith',
    'Southwest Airlines Ave.',
    '111.258.4789',
    'JA@msn.com',
    '101'
);


INSERT INTO service_ticket(
    service_ticket,
    first_name,
    last_name,
    store_id,
    staff_id
)
VALUES (
    '001',
    'Phil',
    'Simmons',
    '132',
    001
);



INSERT INTO service_ticket(
    service_ticket,
    first_name,
    last_name,
    store_id,
    staff_id
)
VALUES (
    '002',
    'Jack',
    'SMITH',
    '101',
    001
);
   
INSERT INTO staff(
    staff_id,
    first_name,
    last_name,
    store_id
)
VALUES (
    001,
    'Jim',
    'Jones',
    '101'
);

INSERT INTO inventory(
    inventory_id,
    product_type,
    store_id
)
VALUES (
    111222,
    'Chevy Colorado',
    '101'
);


INSERT INTO inventory(
    inventory_id,
    product_type,
    store_id
)
VALUES (
    111223,
    'Chevy Cruise',
    '101'
);

INSERT INTO inventory(
    inventory_id,
    product_type,
    store_id
)
VALUES (
    111224,
    'Nisan Ultima',
    '101'
);


INSERT INTO service_history(
    service_history_ID,
    first_name,
    last_name,
    store_id,
    service_ticket
)
VALUES (
    002,
    'Jack',
    'Smith',
    '101',
    002
);



INSERT INTO store(
    store_id,
    customer_id,
    service_history_ID,
    sale_id
)
VALUES (
    '101',
    002,
    002,
    '002'
);


INSERT INTO sale(
    sale_id,
    customer_id,
    payment_id,
    product_id,
    staff_id
)
VALUES (
    '002',
    002,
    '002',
    'none',
    001
);

INSERT INTO sale(
    sale_id,
    customer_id,
    payment_id,
    product_id,
    staff_id
)
VALUES (
    '001',
    001,
    '001',
    10000,
    001
);

INSERT INTO product(
    product_id,
    quantity,
    product_type,
    condition,
    year,
    color,
    new_or_used,
    miles,
    inventory_id
)
VALUES (
    1000,
    1,
    'Chevy Colorado',
    'Excelent',
    2022,
    'White',
    'new',
    10000,
    111222
);

INSERT INTO product(
    product_id,
    quantity,
    product_type,
    condition,
    year,
    color,
    new_or_used,
    miles,
    inventory_id
)
VALUES (
    10000,
    1,
    'Nissan Ultima',
    'Good',
    2012,
    'Gray',
    'used',
    10000,
    111224
);




INSERT INTO invoice(
    invoice_id,
    staff_id,
    customer_id,
    store_id
)
VALUES (
    245689,
    '1',
    2,
    '101'
);

INSERT INTO invoice(
    invoice_id,
    staff_id,
    customer_id,
    store_id
)
VALUES (
    245690,
    '1',
    1,
    '101'
);

INSERT INTO payment(
    payment_id,
    customer_id,
    first_name,
    last_name,
    amount,
    invoice_id,
    service_ticket
)
VALUES (
    002,
    '002',
    'Jack',
    'Smith',
    5000.00,
    245689,
    002
);
