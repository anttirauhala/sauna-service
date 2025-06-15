-- Reipin sauna
INSERT INTO sauna_private.sauna (id, name, street_address, postal_code, city, phone, web_page, info, kiosk, restaurant) VALUES
    ('3717fe0b-fc40-45d0-bd20-d752f181aded', 'Reipin sauna', 'Reipintie 43', '33980', 'Pirkkala', '040 133 5766', 
    'https://www.pirkkala.fi/toimipisteet/reipin-sauna-fi-5f192a48475a6c2fdbf4c312/', 
    'Saunarakennuksessa on yhteinen takkatupa ja kaksi saunaa ja pukuhuonetta. Vain käteinen! KESÄKAUSI (9.6.-3.8.2025): Kaikille avoimet saunavuorot ti-pe 14-20, la-su 14-18.', true, false);

-- Insert summer opening hours for Reipin sauna (9.6.-3.8.2025)
INSERT INTO sauna_private.opening_hour (id, sauna_id, weekday, opening_time, closing_time) VALUES
--    ('855c4d54-0237-47dc-828e-9cfbaf3db531', '3717fe0b-fc40-45d0-bd20-d752f181aded', 'MONDAY', '17:00', '20:00'),
    ('855c4d54-0237-47dc-828e-9cfbaf3db531', '3717fe0b-fc40-45d0-bd20-d752f181aded', 'TUESDAY', '14:00', '20:00'),
    ('b9d35093-a5a9-4dda-ac15-d4e69cb7b2a9', '3717fe0b-fc40-45d0-bd20-d752f181aded', 'WEDNESDAY', '14:00', '20:00'),
    ('a1b2c3d4-e5f6-4748-a9b0-123456789abc', '3717fe0b-fc40-45d0-bd20-d752f181aded', 'THURSDAY', '14:00', '20:00'),
    ('e1f2a3b4-c5d6-4849-b0c1-234567890def', '3717fe0b-fc40-45d0-bd20-d752f181aded', 'FRIDAY', '14:00', '20:00'),
    ('ce1c1142-324d-476a-b883-8630df02748e', '3717fe0b-fc40-45d0-bd20-d752f181aded', 'SATURDAY', '14:00', '18:00'),
    ('f1e2d3c4-b5a6-4950-c1d2-345678901fed', '3717fe0b-fc40-45d0-bd20-d752f181aded', 'SUNDAY', '14:00', '18:00');

-- Insert prices for Reipin sauna (summer schedule)
INSERT INTO sauna_private.price (id, opening_hour_id, price_type, price) VALUES
--    ('c5b87faa-b27e-4319-9b7b-93e4326875cb', '855c4d54-0237-47dc-828e-9cfbaf3db531', 'ADULT', 6.00),
--    ('d50b91b7-f638-432a-9131-33949d82fd07', '855c4d54-0237-47dc-828e-9cfbaf3db531', 'CHILD', 2.00),
    ('c5b87faa-b27e-4319-9b7b-93e4326875cb', '855c4d54-0237-47dc-828e-9cfbaf3db531', 'ADULT', 6.00),
    ('d50b91b7-f638-432a-9131-33949d82fd07', '855c4d54-0237-47dc-828e-9cfbaf3db531', 'CHILD', 2.00),
    ('b217eca6-3efa-4713-80ee-53b245765b52', 'b9d35093-a5a9-4dda-ac15-d4e69cb7b2a9', 'ADULT', 6.00),
    ('284a244f-2b85-4be7-9c25-338deda9ba9d', 'b9d35093-a5a9-4dda-ac15-d4e69cb7b2a9', 'CHILD', 2.00),
    ('a1b2c3d4-e5f6-4748-a9b0-111111111111', 'a1b2c3d4-e5f6-4748-a9b0-123456789abc', 'ADULT', 6.00),
    ('a1b2c3d4-e5f6-4748-a9b0-222222222222', 'a1b2c3d4-e5f6-4748-a9b0-123456789abc', 'CHILD', 2.00),
    ('e1f2a3b4-c5d6-4849-b0c1-111111111111', 'e1f2a3b4-c5d6-4849-b0c1-234567890def', 'ADULT', 6.00),
    ('e1f2a3b4-c5d6-4849-b0c1-222222222222', 'e1f2a3b4-c5d6-4849-b0c1-234567890def', 'CHILD', 2.00),
    ('81287699-8dc5-4e5f-aa13-557cccb6d684', 'ce1c1142-324d-476a-b883-8630df02748e', 'ADULT', 6.00),
    ('9c457cd9-fb8b-4429-9c66-ad622fc64b32', 'ce1c1142-324d-476a-b883-8630df02748e', 'CHILD', 2.00),
    ('f1e2d3c4-b5a6-4950-c1d2-111111111111', 'f1e2d3c4-b5a6-4950-c1d2-345678901fed', 'ADULT', 6.00),
    ('f1e2d3c4-b5a6-4950-c1d2-222222222222', 'f1e2d3c4-b5a6-4950-c1d2-345678901fed', 'CHILD', 2.00);