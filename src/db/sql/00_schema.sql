
CREATE SCHEMA sauna_private;

CREATE TABLE sauna_private.sauna (
    id UUID PRIMARY KEY,
    name TEXT,
    street_address TEXT,
    postal_code TEXT,
    city TEXT,
    phone TEXT,
    web_page TEXT,
    info text,
    kiosk BOOLEAN,
    restaurant BOOLEAN
);

CREATE TABLE sauna_private.opening_hour (
    id UUID PRIMARY KEY,
    sauna_id UUID,
    weekday TEXT,
    opening_time TIME,
    closing_time TIME,
    FOREIGN KEY (sauna_id) REFERENCES sauna_private.sauna(id)
);

CREATE TABLE sauna_private.price (
    id UUID PRIMARY KEY,
    opening_hour_id UUID,
    price_type TEXT,
    price DECIMAL(10, 2),
    FOREIGN KEY (opening_hour_id) REFERENCES sauna_private.opening_hour(id)
);

