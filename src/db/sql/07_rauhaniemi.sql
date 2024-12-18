-- Insert Rauhaniemi sauna
INSERT INTO sauna_private.sauna (id, name, street_address, postal_code, city) VALUES
    ('e5464683-0de2-46f7-b84b-0ae7aac715b5', 'Rauhaniemen kansankylpylä', 'Rauhaniementie 24', '33180', 'Tampere');

-- Insert opening hours for Rauhaniemi
INSERT INTO sauna_private.opening_hour (id, sauna_id, weekday, opening_time, closing_time) VALUES
    ('85ea1c9f-8459-4e8b-99fe-0d659d79d759', 'e5464683-0de2-46f7-b84b-0ae7aac715b5', 'MONDAY', '14:00', '22:30'),
    ('1abdcb0a-39ca-422d-a03d-a87c5afd704b', 'e5464683-0de2-46f7-b84b-0ae7aac715b5', 'TUESDAY', '14:00', '22:30'),
    ('17497175-019b-40f2-beeb-65fe16c29ff2', 'e5464683-0de2-46f7-b84b-0ae7aac715b5', 'WEDNESDAY', '14:00', '22:30'),
    ('c7169333-c7ca-495a-baf6-3d9ea9a09425', 'e5464683-0de2-46f7-b84b-0ae7aac715b5', 'THURSDAY', '14:00', '22:30'),
    ('fa36c9f8-0bf5-4c88-b80b-93ab4bcd641e', 'e5464683-0de2-46f7-b84b-0ae7aac715b5', 'FRIDAY', '14:00', '22:30'),
    ('ea834daa-4627-4de0-8dd4-67a28d1207e2', 'e5464683-0de2-46f7-b84b-0ae7aac715b5', 'SATURDAY', '11:00', '22:30'),
    ('31bdb581-1dd9-4d43-bbda-66c5037dbc7e', 'e5464683-0de2-46f7-b84b-0ae7aac715b5', 'SUNDAY', '11:00', '22:30');

-- Insert prices for Rauhaniemi
INSERT INTO sauna_private.price (id, opening_hour_id, price_type, price) VALUES
    ('27c70c4d-d1ed-4712-a8b9-08315c730cb0', '85ea1c9f-8459-4e8b-99fe-0d659d79d759', 'ADULT', 11.00),
    ('7f454eb2-2545-44a0-9f50-835d3724627b', '1abdcb0a-39ca-422d-a03d-a87c5afd704b', 'ADULT', 11.00),
    ('d22f55d2-727d-4871-ad3e-808505666879', '17497175-019b-40f2-beeb-65fe16c29ff2', 'ADULT', 11.00),
    ('fd17543d-9b0a-4016-b27c-32061862b9a8', 'c7169333-c7ca-495a-baf6-3d9ea9a09425', 'ADULT', 11.00),
    ('cfb4e43e-9c6e-43a2-be97-75a685fc6118', 'fa36c9f8-0bf5-4c88-b80b-93ab4bcd641e', 'ADULT', 11.00),
    ('bd816c4d-3d95-436a-af4f-900162837130', 'ea834daa-4627-4de0-8dd4-67a28d1207e2', 'ADULT', 11.00),
    ('17978d64-c2fe-4eca-b4c8-9d92b65b3e2e', '31bdb581-1dd9-4d43-bbda-66c5037dbc7e', 'ADULT', 11.00),

    ('7714a5e4-f971-40f7-94ba-3ab74a38e4ac', '85ea1c9f-8459-4e8b-99fe-0d659d79d759', 'CHILD', 5.00),
    ('72b6f611-a4bd-485f-b4e3-76b8897784bb', '1abdcb0a-39ca-422d-a03d-a87c5afd704b', 'CHILD', 5.00),
    ('7b9015ff-b588-448c-b17c-5e716c5e7131', '17497175-019b-40f2-beeb-65fe16c29ff2', 'CHILD', 5.00),
    ('1d4ee9b7-c18a-4f81-bd63-6b958f0c3c91', 'c7169333-c7ca-495a-baf6-3d9ea9a09425', 'CHILD', 5.00),
    ('9841e0eb-678f-4b4c-a2f5-319a1de312c2', 'fa36c9f8-0bf5-4c88-b80b-93ab4bcd641e', 'CHILD', 5.00),
    ('28aa397b-23ec-4d99-8590-f8d7e56c5bb3', 'ea834daa-4627-4de0-8dd4-67a28d1207e2', 'CHILD', 5.00),
    ('c0c8edf9-1919-4db1-9219-9addc9c57ac9', '31bdb581-1dd9-4d43-bbda-66c5037dbc7e', 'CHILD', 5.00);