
-- Insert FLOU sauna
INSERT INTO sauna_private.sauna (id, name, street_address, postal_code, city, phone, web_page, info, kiosk, restaurant) VALUES
    ('8d2b44bd-d2e6-4145-9c2f-a454d73201be', 'FLOU Sauna', 'Jalkasaarentie 7, Rosendahlin Laituri', '33230', 'Tampere',
    '+358 44 249 3834', 'https://www.flousauna.fi/', 'Avoinna Rosendahlin laiturin kupeessa avantosaunana 10.11.2024-15.4.2025. Kesällä Tampreeen keskustassa.
    Pikkupurtavaa ja keittoa arkisin, viikonloppuisin lisänä aamiainen. Voit piipahtaa kahville tai drinkille ohikulkumatkalla. Voit myös vuokrata pyyhkeen. Parkeeraus: 
    Jalkasaarentien lopussa, tästä noin n.250 metrin kävely alukseen. Kulku lauttaan Rosendahlin laiturilta.', true, true);

-- Insert opening hours for FLOU sauna
INSERT INTO sauna_private.opening_hour (id, sauna_id, weekday, opening_time, closing_time) VALUES
    ('af9f9da6-bde7-46b5-abf0-0525ffda8137', '8d2b44bd-d2e6-4145-9c2f-a454d73201be', 'MONDAY', '16:00', '22:00'),
    ('887c9219-f68e-4ad9-9e5e-eac1389d50ae', '8d2b44bd-d2e6-4145-9c2f-a454d73201be', 'TUESDAY', '16:00', '22:00'),
    ('42c745b5-f98b-4f86-a259-012a4cde0b80', '8d2b44bd-d2e6-4145-9c2f-a454d73201be', 'WEDNESDAY', '16:00', '22:00'),
    ('a28c7d9e-0f0f-467d-8823-f29d29ca7e2b', '8d2b44bd-d2e6-4145-9c2f-a454d73201be', 'THURSDAY', '16:00', '22:00'),
    ('786abe3c-708b-4a4b-826b-692a880a1391', '8d2b44bd-d2e6-4145-9c2f-a454d73201be', 'FRIDAY', '16:00', '22:00'),
    ('12613bc0-3be1-4975-8631-f553f545c01f', '8d2b44bd-d2e6-4145-9c2f-a454d73201be', 'SATURDAY', '08:00', '20:00'),
    ('428f3549-74da-4f1a-a5e4-2b1cca39d4da', '8d2b44bd-d2e6-4145-9c2f-a454d73201be', 'SUNDAY', '08:00', '20:00');

-- Insert prices for FLOU sauna
INSERT INTO sauna_private.price (id, opening_hour_id, price_type, price) VALUES
    ('26621b66-5f24-4f39-aae4-f07117187ca6', 'af9f9da6-bde7-46b5-abf0-0525ffda8137', 'ADULT', 12.00),
    ('9aa417a3-5e57-4f39-8cf8-03dcf4e0f2d3', '887c9219-f68e-4ad9-9e5e-eac1389d50ae', 'ADULT', 12.00),
    ('da7b7899-fb66-4d02-82d3-13cc73861da1', '42c745b5-f98b-4f86-a259-012a4cde0b80', 'ADULT', 12.00),
    ('4540098d-5e05-4959-8843-5e1eb1450ff3', 'a28c7d9e-0f0f-467d-8823-f29d29ca7e2b', 'ADULT', 12.00),
    ('6764f911-9d3f-4291-b9ac-eb54cf9f5844', '786abe3c-708b-4a4b-826b-692a880a1391', 'ADULT', 12.00),
    ('10eee2f8-b113-407f-b33a-b877e6aa38ee', '12613bc0-3be1-4975-8631-f553f545c01f', 'ADULT', 12.00),
    ('4581568b-8fec-4bdb-a363-9aa64ba5c104', '428f3549-74da-4f1a-a5e4-2b1cca39d4da', 'ADULT', 12.00);
