-- Insert Räikkä sauna
INSERT INTO sauna_private.sauna (id, name, street_address, postal_code, city, phone, web_page, info, kiosk, restaurant) VALUES
    ('550e8400-e29b-41d4-a716-446655440000', 'Räikän sauna', 'Räikäntie 3', '33470', 'Ylöjärvi',
    '', 'https://www.ylojarvenryhti.fi/hiihto/avantouinti/', 'Maksu itsepalveluna käteisellä. Avantosaunakausi alkaa jälleen ke 1.10.2025. (päivitetty 19.8.25) ', false, false);

-- Insert opening hours for Räikkä
INSERT INTO sauna_private.opening_hour (id, sauna_id, weekday, opening_time, closing_time) VALUES
    ('19c10501-6414-4ecf-b7be-8c78cee6120e', '550e8400-e29b-41d4-a716-446655440000', 'MONDAY', '12:00', '20:00'),
    ('7dc850c6-13c2-4c72-bf86-c99c5bdf312d', '550e8400-e29b-41d4-a716-446655440000', 'WEDNESDAY', '12:00', '20:00'),
    ('96a2631c-af90-4081-8a9c-0891a3a564f9', '550e8400-e29b-41d4-a716-446655440000', 'THURSDAY', '12:00', '20:00'),
    ('d51de599-3c1e-4593-be05-9e19bab0ebf5', '550e8400-e29b-41d4-a716-446655440000', 'SATURDAY', '11:00', '20:00');

-- Insert prices for Räikkä
INSERT INTO sauna_private.price (id, opening_hour_id, price_type, price) VALUES
    ('fd7ae6bb-4acb-49df-bfe4-05e489b72013', '19c10501-6414-4ecf-b7be-8c78cee6120e', 'ADULT', 5.00),
    ('7cae2c00-70c1-4b3d-94bb-d6075d00f911', '7dc850c6-13c2-4c72-bf86-c99c5bdf312d', 'ADULT', 5.00),
    ('a7cb3d5a-1830-4c3b-b1f8-aa55dd049f39', '96a2631c-af90-4081-8a9c-0891a3a564f9', 'ADULT', 5.00),
    ('96a2b17b-f6ba-4a86-9546-d1ea97beeab8', 'd51de599-3c1e-4593-be05-9e19bab0ebf5', 'ADULT', 5.00);