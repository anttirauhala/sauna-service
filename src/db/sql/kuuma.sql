-- Insert Saunaravintola Kuuma
INSERT INTO sauna_private.sauna (id, name, street_address, postal_code, city) VALUES
    ('e0f75180-7e9e-4b2c-a72f-7cdd0c56ea11', 'Saunaravintola Kuuma', 'Laukontori 21', '33100', 'Tampere');

-- Insert opening hours for Saunaravintola Kuuma
INSERT INTO sauna_private.opening_hour (id, sauna_id, weekday, opening_time, closing_time) VALUES
    ('d61a7ae0-3628-4b3b-8775-abe8be01aaa9', 'e0f75180-7e9e-4b2c-a72f-7cdd0c56ea11', 'MONDAY', '11:00', '22:00'),
    ('c91927c4-0b89-4195-9f93-297d05302db9', 'e0f75180-7e9e-4b2c-a72f-7cdd0c56ea11', 'TUESDAY', '06:30', '10:30'),
    ('03ced326-eb4c-4e67-8681-5afd6f0a4935', 'e0f75180-7e9e-4b2c-a72f-7cdd0c56ea11', 'TUESDAY', '11:00', '22:00'),
    ('67f968de-72ba-4e02-81e7-338bcf295d7c', 'e0f75180-7e9e-4b2c-a72f-7cdd0c56ea11', 'WEDNESDAY', '06:30', '10:30'),
    ('f1eb77cc-8825-4c55-9634-2bb297c287a0', 'e0f75180-7e9e-4b2c-a72f-7cdd0c56ea11', 'WEDNESDAY', '11:00', '23:00'),
    ('19ecae8d-8ec5-4f3f-84fe-813d4229f606', 'e0f75180-7e9e-4b2c-a72f-7cdd0c56ea11', 'THURSDAY', '06:30', '10:30'),
    ('3af2ef90-4d61-4784-b265-ff390378505b', 'e0f75180-7e9e-4b2c-a72f-7cdd0c56ea11', 'THURSDAY', '11:00', '23:00'),
    ('c69bd2ed-ee05-4e4c-92cc-475929f897f8', 'e0f75180-7e9e-4b2c-a72f-7cdd0c56ea11', 'FRIDAY', '06:30', '10:30'),
    ('e91524da-2e05-452f-b21c-6411dd928da7', 'e0f75180-7e9e-4b2c-a72f-7cdd0c56ea11', 'FRIDAY', '11:00', '23:00'),
    ('b3c04d34-508c-4845-b922-1845b4a1a0f6', 'e0f75180-7e9e-4b2c-a72f-7cdd0c56ea11', 'SATURDAY', '12:00', '23:00'),
    ('1a91cec3-68ce-47b0-8785-40421d4cee64', 'e0f75180-7e9e-4b2c-a72f-7cdd0c56ea11', 'SUNDAY', '15:00', '21:00');

-- Insert prices for Saunaravintola Kuuma
INSERT INTO sauna_private.price (id, opening_hour_id, price_type, price) VALUES
    ('7fc50029-7e6a-49f2-b7a8-da6e86aba8d3', 'd61a7ae0-3628-4b3b-8775-abe8be01aaa9', 'ADULT', 15.00),
    ('735b240a-3497-4102-b0d8-a8cc451c1ed4', 'c91927c4-0b89-4195-9f93-297d05302db9', 'ADULT', 12.00),
    ('78394fa7-0664-42a7-a8f9-3d4de0ed54a7', '03ced326-eb4c-4e67-8681-5afd6f0a4935', 'ADULT', 15.00),
    ('5345c359-ae69-4631-9098-23e9ea6eeaf9', '67f968de-72ba-4e02-81e7-338bcf295d7c', 'ADULT', 12.00),
    ('83bd107a-ad50-46a5-ae76-47dcceb4e273', 'f1eb77cc-8825-4c55-9634-2bb297c287a0', 'ADULT', 15.00),
    ('3e1dc25d-3ad4-4358-ae15-6ff8545190dd', '19ecae8d-8ec5-4f3f-84fe-813d4229f606', 'ADULT', 12.00),
    ('732042fd-07a5-4bbc-96bf-40439becfa56', '3af2ef90-4d61-4784-b265-ff390378505b', 'ADULT', 15.00),
    ('8cb500eb-ee71-4891-b2f0-8c802c53ea10', 'c69bd2ed-ee05-4e4c-92cc-475929f897f8', 'ADULT', 12.00),
    ('e62707fb-fcc8-4cd7-b3d2-90e04fb33603', 'e91524da-2e05-452f-b21c-6411dd928da7', 'ADULT', 15.00),
    ('b8226044-fd75-4205-b391-3c9c3ca1a6e6', 'b3c04d34-508c-4845-b922-1845b4a1a0f6', 'ADULT', 15.00),
    ('2973082a-3d10-4cf0-ad7e-2edc871f81bd', '1a91cec3-68ce-47b0-8785-40421d4cee64', 'ADULT', 15.00);
    