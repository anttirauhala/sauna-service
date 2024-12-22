
-- Insert Veittijärven sauna
INSERT INTO sauna_private.sauna (id, name, street_address, postal_code, city, phone, web_page, info, kiosk, restaurant) VALUES
    ('fe55cca0-9c96-4177-a48a-bd098ec55658', 'Veittijärven Sauna', 'Viljakkalantie 140', '33480', 'Ylöjärvi',
        '+358 44 9730899', 'https://www.ylojarvenavantouimarit.fi/', '', true, false);


-- Insert opening hours for Veittijärven sauna
INSERT INTO sauna_private.opening_hour (id, sauna_id, weekday, opening_time, closing_time) VALUES
    ('55678cc3-10b9-4960-949f-8854740202fc', 'fe55cca0-9c96-4177-a48a-bd098ec55658', 'TUESDAY', '16:00', '21:00'),
    ('6ded7847-9b2b-4a0b-8044-e450f7656f57', 'fe55cca0-9c96-4177-a48a-bd098ec55658', 'WEDNESDAY', '16:00', '21:00'),
    ('3f42668f-032c-47df-af08-9b8e2ea39625', 'fe55cca0-9c96-4177-a48a-bd098ec55658', 'FRIDAY', '15:00', '21:00'),
    ('5538cdce-bd17-45d7-bdc1-3b778bbd74a7', 'fe55cca0-9c96-4177-a48a-bd098ec55658', 'SATURDAY', '14:00', '21:00'),
    ('bf67475d-2a38-4f67-bac1-1c1eacc38deb', 'fe55cca0-9c96-4177-a48a-bd098ec55658', 'SUNDAY', '14:00', '21:00');

-- Insert prices for Veittijärven sauna
INSERT INTO sauna_private.price (id, opening_hour_id, price_type, price) VALUES
    ('b35e6b18-81f6-4734-a54e-e2d835fa14b9', '55678cc3-10b9-4960-949f-8854740202fc', 'ADULT', 10.00),
    ('93f24553-c2be-4ff1-8fe5-a70dedc85e0d', '55678cc3-10b9-4960-949f-8854740202fc', 'CHILD', 5.00),
    ('0512bc88-6ac3-4cc2-b7ec-8b7acdce950e', '6ded7847-9b2b-4a0b-8044-e450f7656f57', 'ADULT', 10.00),
    ('06014008-1778-4df2-8b84-75f8c7c79268', '6ded7847-9b2b-4a0b-8044-e450f7656f57', 'CHILD', 5.00),
    ('fa1e782a-6530-4404-b854-be517d5b3b1a', '3f42668f-032c-47df-af08-9b8e2ea39625', 'ADULT', 10.00),
    ('6a952c58-5c3d-482a-8a77-f915ab8966e4', '3f42668f-032c-47df-af08-9b8e2ea39625', 'CHILD', 5.00),
    ('ac1d5c25-3b2d-409a-b0ad-01d8c20c0742', '5538cdce-bd17-45d7-bdc1-3b778bbd74a7', 'ADULT', 10.00),
    ('cb8b84ea-f224-4151-bab9-b67a9ae52166', '5538cdce-bd17-45d7-bdc1-3b778bbd74a7', 'CHILD', 5.00),
    ('62b9c47a-db54-40fe-8ea0-485433ad2688', 'bf67475d-2a38-4f67-bac1-1c1eacc38deb', 'ADULT', 10.00),
    ('e88ebc50-e394-4696-a72c-50358586dbe6', 'bf67475d-2a38-4f67-bac1-1c1eacc38deb', 'CHILD', 5.00);
