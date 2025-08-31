-- Insert Pereensaaren sauna
INSERT INTO sauna_private.sauna (id, name, street_address, postal_code, city, phone, web_page, info, kiosk, restaurant) VALUES
    ('a9a1cb1f-a001-4bdd-9afb-1fb90fc839a4', 'Pereensaaren sauna', 'Pereensaarentie 43', '33950', 'Pirkkala',
    '+358 50 5581818', 'https://pereensaarensauna.fi/', 'Pyyhkeitä ja uima-asuja vuokrattavana tarvittaessa.', true, true);


-- Insert opening hours for Pereensaaren sauna
INSERT INTO sauna_private.opening_hour (id, sauna_id, weekday, opening_time, closing_time) VALUES
    ('4bd5d8d7-c116-4297-ab13-da03ff6a6ca1', 'a9a1cb1f-a001-4bdd-9afb-1fb90fc839a4', 'MONDAY', '16:00', '22:00'),
    ('bf75802c-7bf8-4a72-8d02-ce6d0edc3297', 'a9a1cb1f-a001-4bdd-9afb-1fb90fc839a4', 'TUESDAY', '16:00', '22:00'),
    ('bbe880bc-7516-443f-94d1-3a077dc71b41', 'a9a1cb1f-a001-4bdd-9afb-1fb90fc839a4', 'WEDNESDAY', '16:00', '22:00'),
    ('033924fb-aa4d-47b0-8a8f-e86caf36b48c', 'a9a1cb1f-a001-4bdd-9afb-1fb90fc839a4', 'THURSDAY', '16:00', '22:00'),
    ('8a506f81-363e-4648-94e4-d71e3c338172', 'a9a1cb1f-a001-4bdd-9afb-1fb90fc839a4', 'FRIDAY', '16:00', '22:00'),
    ('caa49258-6e5d-4ff0-bab2-2b4778430019', 'a9a1cb1f-a001-4bdd-9afb-1fb90fc839a4', 'SATURDAY', '14:00', '22:00'),
    ('d444b249-6c4f-4e3a-b6af-c1224dcc938f', 'a9a1cb1f-a001-4bdd-9afb-1fb90fc839a4', 'SUNDAY', '14:00', '22:00');

-- Insert prices for Pereensaaren sauna
INSERT INTO sauna_private.price (id, opening_hour_id, price_type, price) VALUES
    ('76337545-0d01-4109-9cb2-4a016d9500d3', '4bd5d8d7-c116-4297-ab13-da03ff6a6ca1', 'ADULT', 14.00),
    ('77027c23-c2fd-46a6-94eb-829ce55de8c2', '4bd5d8d7-c116-4297-ab13-da03ff6a6ca1', 'STUDENT', 12.60),
    ('bf2c3d71-2159-4816-98f1-3b0ff2e5b87e', '4bd5d8d7-c116-4297-ab13-da03ff6a6ca1', 'PENSIONER', 12.60),
    ('32c7de4d-5369-4324-88aa-99c58b50cbe4', '4bd5d8d7-c116-4297-ab13-da03ff6a6ca1', 'CONSRIPT', 12.60),
    ('8906c475-e9f7-4703-8efe-b2aee62316e0', '4bd5d8d7-c116-4297-ab13-da03ff6a6ca1', 'CHILD', 7.00),

    ('8a0f39a0-5160-42fd-ab23-88534893efc1', 'bf75802c-7bf8-4a72-8d02-ce6d0edc3297', 'ADULT', 14.00),
    ('aa6df1cf-e46a-4aa8-81f9-f634fd79ff8d', 'bf75802c-7bf8-4a72-8d02-ce6d0edc3297', 'STUDENT', 12.60),
    ('bb9cf3eb-ebb6-462e-a270-777eb4718f26', 'bf75802c-7bf8-4a72-8d02-ce6d0edc3297', 'PENSIONER', 12.60),
    ('445c99c5-959d-424f-b390-71f890fd11b4', 'bf75802c-7bf8-4a72-8d02-ce6d0edc3297', 'CONSRIPT', 12.60),
    ('628f7b13-d801-4807-b300-a73756b29c0e', 'bf75802c-7bf8-4a72-8d02-ce6d0edc3297', 'CHILD', 7.00),

    ('08480b35-1301-4dc5-9496-99ac151dd596', 'bbe880bc-7516-443f-94d1-3a077dc71b41', 'ADULT', 14.00),
    ('2b7cadc1-a4ca-4d82-b213-7caa5a26d7b7', 'bbe880bc-7516-443f-94d1-3a077dc71b41', 'STUDENT', 12.60),
    ('f37c6d0d-942c-44e1-8e03-02a39fb8d63d', 'bbe880bc-7516-443f-94d1-3a077dc71b41', 'PENSIONER', 12.60),
    ('3dd591e1-d916-40b1-b708-ae59c9bac8f3', 'bbe880bc-7516-443f-94d1-3a077dc71b41', 'CONSRIPT', 12.60),
    ('a374a70c-a4bf-4d16-9a77-a655772a25d7', 'bbe880bc-7516-443f-94d1-3a077dc71b41', 'CHILD', 7.00),

    ('e1a11792-4d82-487a-96f6-2e8a5253ac19', '033924fb-aa4d-47b0-8a8f-e86caf36b48c', 'ADULT', 14.00),
    ('65841321-70ad-4203-bf21-50176ae0d152', '033924fb-aa4d-47b0-8a8f-e86caf36b48c', 'STUDENT', 12.60),
    ('6d5447ff-bcad-4e6c-ac90-da02e5acf244', '033924fb-aa4d-47b0-8a8f-e86caf36b48c', 'PENSIONER', 12.60),
    ('c832b89f-8738-48e5-afcf-a9854111d3f9', '033924fb-aa4d-47b0-8a8f-e86caf36b48c', 'CONSRIPT', 12.60),
    ('aaec0f6a-63c0-4a70-bce2-782c2e7748b9', '033924fb-aa4d-47b0-8a8f-e86caf36b48c', 'CHILD', 7.00),

    ('d51e56fd-b314-45d7-90a2-e4f9ba6f3611', '8a506f81-363e-4648-94e4-d71e3c338172', 'ADULT', 14.00),
    ('ffd0930b-9f98-4a06-9d1f-1ddeee1392a4', '8a506f81-363e-4648-94e4-d71e3c338172', 'STUDENT', 12.60),
    ('466f3694-c80c-46de-a41a-da2c6e52147f', '8a506f81-363e-4648-94e4-d71e3c338172', 'PENSIONER', 12.60),
    ('c1d95e73-82c2-4db7-8840-613eb59d4907', '8a506f81-363e-4648-94e4-d71e3c338172', 'CONSRIPT', 12.60),
    ('7fa2c99c-b102-4ad2-a681-80cb73df73b5', '8a506f81-363e-4648-94e4-d71e3c338172', 'CHILD', 7.00),

    ('4e2ce578-a41a-4178-b864-dc855e1e9b6f', 'caa49258-6e5d-4ff0-bab2-2b4778430019', 'ADULT', 16.00),
    ('7cdc7997-acd7-4589-b879-2a8967ba62ad', 'caa49258-6e5d-4ff0-bab2-2b4778430019', 'STUDENT', 14.40),
    ('74b175b6-0c20-4cc5-938c-ac6d675a1992', 'caa49258-6e5d-4ff0-bab2-2b4778430019', 'PENSIONER', 14.40),
    ('48e4ecee-111e-4799-a034-a92a83b34555', 'caa49258-6e5d-4ff0-bab2-2b4778430019', 'CONSRIPT', 14.40),
    ('7483de97-2383-4759-8333-ac742c675848', 'caa49258-6e5d-4ff0-bab2-2b4778430019', 'CHILD', 7.00),

    ('085c27b2-954a-4d6a-8600-dfe74ea2ef59', 'd444b249-6c4f-4e3a-b6af-c1224dcc938f', 'ADULT', 16.00),
    ('6d867aeb-274d-43ac-bea0-2ca41b7cadae', 'd444b249-6c4f-4e3a-b6af-c1224dcc938f', 'STUDENT', 14.40),
    ('2a682b3a-86d8-4ab6-b580-97df62d6d2d9', 'd444b249-6c4f-4e3a-b6af-c1224dcc938f', 'CHILD', 7.00),
    ('4e97f37f-3cb7-4973-af7b-86e20d68f91b', 'd444b249-6c4f-4e3a-b6af-c1224dcc938f', 'CONSRIPT', 14.40),
    ('30631536-92e0-4370-98c3-d3d54dd66a58', 'd444b249-6c4f-4e3a-b6af-c1224dcc938f', 'PENSIONER', 14.40);