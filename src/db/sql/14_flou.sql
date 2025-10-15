
-- Insert FLOU sauna
INSERT INTO sauna_private.sauna (id, name, street_address, postal_code, city, phone, web_page, info, kiosk, restaurant) VALUES
    ('8d2b44bd-d2e6-4145-9c2f-a454d73201be', 'FLOU Sauna', 'Ratinan rantatie 6', '33100', 'Tampere',
    '+358 44 249 3834', 'https://www.flousauna.fi/', 'Talvikausi 13.10.2025-01.05.2026: Ratinan rantatie 6, Ratinan stadionin edustalla. Pikkupurtavaa ja keittoa arkisin, viikonloppuisin lisänä aamiainen. Voit piipahtaa kahville tai drinkille ohikulkumatkalla. Voit myös vuokrata pyyhkeen.', true, true);

-- Insert opening hours for FLOU sauna (Winter season 13.10.2025-01.05.2026)
INSERT INTO sauna_private.opening_hour (id, sauna_id, weekday, opening_time, closing_time) VALUES
    ('7c8e9f2a-3b4d-5c6e-8f9a-1b2c3d4e5f6a', '8d2b44bd-d2e6-4145-9c2f-a454d73201be', 'MONDAY', '15:00', '21:00'),
    ('8d9e0f1b-2c3d-4e5f-6a7b-8c9d0e1f2a3b', '8d2b44bd-d2e6-4145-9c2f-a454d73201be', 'TUESDAY', '15:00', '21:00'),
    ('42c745b5-f98b-4f86-a259-012a4cde0b80', '8d2b44bd-d2e6-4145-9c2f-a454d73201be', 'WEDNESDAY', '15:00', '21:00'),
    ('a28c7d9e-0f0f-467d-8823-f29d29ca7e2b', '8d2b44bd-d2e6-4145-9c2f-a454d73201be', 'THURSDAY', '15:00', '21:00'),
    ('786abe3c-708b-4a4b-826b-692a880a1391', '8d2b44bd-d2e6-4145-9c2f-a454d73201be', 'FRIDAY', '15:00', '21:00'),
    ('12613bc0-3be1-4975-8631-f553f545c01f', '8d2b44bd-d2e6-4145-9c2f-a454d73201be', 'SATURDAY', '08:00', '21:00'),
    ('428f3549-74da-4f1a-a5e4-2b1cca39d4da', '8d2b44bd-d2e6-4145-9c2f-a454d73201be', 'SUNDAY', '08:00', '21:00');

-- Insert prices for FLOU sauna
INSERT INTO sauna_private.price (id, opening_hour_id, price_type, price) VALUES
    -- Monday
    ('9e0f1a2b-3c4d-5e6f-7a8b-9c0d1e2f3a4b', '7c8e9f2a-3b4d-5c6e-8f9a-1b2c3d4e5f6a', 'ADULT', 15.00),
    ('1a2b3c4d-5e6f-7a8b-9c0d-1e2f3a4b5c6d', '7c8e9f2a-3b4d-5c6e-8f9a-1b2c3d4e5f6a', 'STUDENT', 13.00),
    ('2b3c4d5e-6f7a-8b9c-0d1e-2f3a4b5c6d7e', '7c8e9f2a-3b4d-5c6e-8f9a-1b2c3d4e5f6a', 'PENSIONER', 13.00),
    ('3c4d5e6f-7a8b-9c0d-1e2f-3a4b5c6d7e8f', '7c8e9f2a-3b4d-5c6e-8f9a-1b2c3d4e5f6a', 'CONSCRIPT', 13.00),
    -- Tuesday
    ('0f1a2b3c-4d5e-6f7a-8b9c-0d1e2f3a4b5c', '8d9e0f1b-2c3d-4e5f-6a7b-8c9d0e1f2a3b', 'ADULT', 15.00),
    ('4d5e6f7a-8b9c-0d1e-2f3a-4b5c6d7e8f9a', '8d9e0f1b-2c3d-4e5f-6a7b-8c9d0e1f2a3b', 'STUDENT', 13.00),
    ('5e6f7a8b-9c0d-1e2f-3a4b-5c6d7e8f9a0b', '8d9e0f1b-2c3d-4e5f-6a7b-8c9d0e1f2a3b', 'PENSIONER', 13.00),
    ('6f7a8b9c-0d1e-2f3a-4b5c-6d7e8f9a0b1c', '8d9e0f1b-2c3d-4e5f-6a7b-8c9d0e1f2a3b', 'CONSCRIPT', 13.00),
    -- Wednesday
    ('da7b7899-fb66-4d02-82d3-13cc73861da1', '42c745b5-f98b-4f86-a259-012a4cde0b80', 'ADULT', 15.00),
    ('7a8b9c0d-1e2f-3a4b-5c6d-7e8f9a0b1c2d', '42c745b5-f98b-4f86-a259-012a4cde0b80', 'STUDENT', 13.00),
    ('8b9c0d1e-2f3a-4b5c-6d7e-8f9a0b1c2d3e', '42c745b5-f98b-4f86-a259-012a4cde0b80', 'PENSIONER', 13.00),
    ('9c0d1e2f-3a4b-5c6d-7e8f-9a0b1c2d3e4f', '42c745b5-f98b-4f86-a259-012a4cde0b80', 'CONSCRIPT', 13.00),
    -- Thursday
    ('4540098d-5e05-4959-8843-5e1eb1450ff3', 'a28c7d9e-0f0f-467d-8823-f29d29ca7e2b', 'ADULT', 15.00),
    ('0d1e2f3a-4b5c-6d7e-8f9a-0b1c2d3e4f5a', 'a28c7d9e-0f0f-467d-8823-f29d29ca7e2b', 'STUDENT', 13.00),
    ('1e2f3a4b-5c6d-7e8f-9a0b-1c2d3e4f5a6b', 'a28c7d9e-0f0f-467d-8823-f29d29ca7e2b', 'PENSIONER', 13.00),
    ('2f3a4b5c-6d7e-8f9a-0b1c-2d3e4f5a6b7c', 'a28c7d9e-0f0f-467d-8823-f29d29ca7e2b', 'CONSCRIPT', 13.00),
    -- Friday
    ('6764f911-9d3f-4291-b9ac-eb54cf9f5844', '786abe3c-708b-4a4b-826b-692a880a1391', 'ADULT', 15.00),
    ('3a4b5c6d-7e8f-9a0b-1c2d-3e4f5a6b7c8d', '786abe3c-708b-4a4b-826b-692a880a1391', 'STUDENT', 13.00),
    ('4b5c6d7e-8f9a-0b1c-2d3e-4f5a6b7c8d9e', '786abe3c-708b-4a4b-826b-692a880a1391', 'PENSIONER', 13.00),
    ('5c6d7e8f-9a0b-1c2d-3e4f-5a6b7c8d9e0f', '786abe3c-708b-4a4b-826b-692a880a1391', 'CONSCRIPT', 13.00),
    -- Saturday
    ('10eee2f8-b113-407f-b33a-b877e6aa38ee', '12613bc0-3be1-4975-8631-f553f545c01f', 'ADULT', 15.00),
    ('6d7e8f9a-0b1c-2d3e-4f5a-6b7c8d9e0f1a', '12613bc0-3be1-4975-8631-f553f545c01f', 'STUDENT', 13.00),
    ('7e8f9a0b-1c2d-3e4f-5a6b-7c8d9e0f1a2b', '12613bc0-3be1-4975-8631-f553f545c01f', 'PENSIONER', 13.00),
    ('8f9a0b1c-2d3e-4f5a-6b7c-8d9e0f1a2b3c', '12613bc0-3be1-4975-8631-f553f545c01f', 'CONSCRIPT', 13.00),
    -- Sunday
    ('4581568b-8fec-4bdb-a363-9aa64ba5c104', '428f3549-74da-4f1a-a5e4-2b1cca39d4da', 'ADULT', 15.00),
    ('9a0b1c2d-3e4f-5a6b-7c8d-9e0f1a2b3c4d', '428f3549-74da-4f1a-a5e4-2b1cca39d4da', 'STUDENT', 13.00),
    ('0b1c2d3e-4f5a-6b7c-8d9e-0f1a2b3c4d5e', '428f3549-74da-4f1a-a5e4-2b1cca39d4da', 'PENSIONER', 13.00),
    ('1c2d3e4f-5a6b-7c8d-9e0f-1a2b3c4d5e6f', '428f3549-74da-4f1a-a5e4-2b1cca39d4da', 'CONSCRIPT', 13.00);
