
-- Insert Alisniemen sauna
INSERT INTO sauna_private.sauna (id, name, street_address, postal_code, city, phone, web_page, info, kiosk, restaurant) VALUES
    ('66e5f3c7-b4ac-4bc6-8e2b-19395b73ec3d', 'Alisniemen sauna', 'Porintie 584', '37130', 'Nokia',
        '+358 50 919 7050', 'https://www.alisniemi.com/', 'Kassa sulkeutuu 30 min ennen päättymisaikaa. Maksuvälineeksi suositellaan pankkikorttia. Su klo 19-21 hiljainen sauna.', true, false);

-- Insert opening hours for Alisniemen sauna
INSERT INTO sauna_private.opening_hour (id, sauna_id, weekday, opening_time, closing_time) VALUES
    -- ('3ccfc019-85d5-490d-8016-a8183ff5ae88', '66e5f3c7-b4ac-4bc6-8e2b-19395b73ec3d', 'MONDAY', '14:00', '17:00'),
    ('b088f5a4-d26a-4803-bd83-cbb435f19b46', '66e5f3c7-b4ac-4bc6-8e2b-19395b73ec3d', 'WEDNESDAY', '15:00', '21:30'),
    ('496f9b79-0cc4-48d0-96b6-0c1149533e14', '66e5f3c7-b4ac-4bc6-8e2b-19395b73ec3d', 'FRIDAY', '15:00', '22:00'),
    ('ec666f39-3f15-41ea-ab1f-9766fe21b7ae', '66e5f3c7-b4ac-4bc6-8e2b-19395b73ec3d', 'SUNDAY', '13:00', '21:30');

-- Insert prices for Alisniemen sauna
INSERT INTO sauna_private.price (id, opening_hour_id, price_type, price) VALUES
    ('e553d43c-4998-43dd-ac56-2c4136be1a17', '3ccfc019-85d5-490d-8016-a8183ff5ae88', 'ADULT', 8.00),
    ('55fc8ad8-0a0f-4ba0-867a-59675385bc4d', '3ccfc019-85d5-490d-8016-a8183ff5ae88', 'CHILD', 2.00),
    ('8993d75b-2a83-4818-97fd-0324b1dcb5f9', 'b088f5a4-d26a-4803-bd83-cbb435f19b46', 'ADULT', 8.00),
    ('3f598907-7c64-4731-94c7-f7be099e65b7', 'b088f5a4-d26a-4803-bd83-cbb435f19b46', 'CHILD', 2.00),
    ('8ae5c1f4-1f3e-4c6a-8f71-87b425e04881', '496f9b79-0cc4-48d0-96b6-0c1149533e14', 'ADULT', 8.00),
    ('d6f4b556-8277-416f-a2e8-682621ecd287', '496f9b79-0cc4-48d0-96b6-0c1149533e14', 'CHILD', 2.00),
    ('ec1bdbe9-e2b6-4096-8d26-7c33622445bd', 'ec666f39-3f15-41ea-ab1f-9766fe21b7ae', 'ADULT', 8.00),
    ('7533ef71-c44c-44f1-9e79-61c1c57aa386', 'ec666f39-3f15-41ea-ab1f-9766fe21b7ae', 'CHILD', 2.00);
