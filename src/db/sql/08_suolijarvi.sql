
-- Insert Suolijärven sauna
INSERT INTO sauna_private.sauna (id, name, street_address, postal_code, city, phone, web_page, info, kiosk, restaurant) VALUES
    ('a9594a00-e4bd-4093-a9e1-79a24a3b3b7a', 'Suolijärven sauna', ' Suolijärvenkatu 5', '33720', 'Tampere',
        '+358 400 243 559', 'https://juttusauna.fi/suolijarven-sauna/', 'Uusi sauna aloitti kolmantena saunana Suolijärvellä jouluaattona 2024. Saunavuoro varattava etukäteen. Saunojen aukioloaika on edelleen jaettu tunnin vuoroihin, jotka näet varaussivustolla. HUOM. Ajankohtaista:  Sauna on kesätauolla 2025, jatketaan jälkeen 7. syyskuuta.', false, false);

-- HUOM: Sauna on kesätauolla 2025, jatketaan jälkeen 7. syyskuuta
-- Opening hours and prices commented out during summer break

-- Insert opening hours for Suolijärven sauna (CURRENTLY CLOSED - SUMMER BREAK UNTIL SEPT 7, 2025)

-- INSERT INTO sauna_private.opening_hour (id, sauna_id, weekday, opening_time, closing_time) VALUES
--     ('911a7d7f-d84e-426c-949c-dd8ac575ac5f', 'a9594a00-e4bd-4093-a9e1-79a24a3b3b7a', 'TUESDAY', '16:15', '20:45'),
--     ('1204fbaf-c64a-4420-bac4-42af1622a79b', 'a9594a00-e4bd-4093-a9e1-79a24a3b3b7a', 'WEDNESDAY', '16:15', '20:45'),
--     ('031818b7-ef8a-463b-8d43-0055f72c75da', 'a9594a00-e4bd-4093-a9e1-79a24a3b3b7a', 'THURSDAY', '16:15', '20:45'),
--     ('01055bbc-694d-4458-8554-82361232a67a', 'a9594a00-e4bd-4093-a9e1-79a24a3b3b7a', 'FRIDAY', '16:15', '20:45'),
--     ('4a0c4d09-f0d1-4dc0-bacd-0cc9978e7fa6', 'a9594a00-e4bd-4093-a9e1-79a24a3b3b7a', 'SATURDAY', '13:15', '17:45'),
--     ('c3b54d5c-9f10-497b-b90f-d3eb92bb7d62', 'a9594a00-e4bd-4093-a9e1-79a24a3b3b7a', 'SUNDAY', '13:15', '20:15');


-- Insert prices for Suolijärven sauna

-- INSERT INTO sauna_private.price (id, opening_hour_id, price_type, price) VALUES
--     ('fa0d4f4e-5531-4365-abb9-e5f199a70186', '911a7d7f-d84e-426c-949c-dd8ac575ac5f', 'ADULT', 8.00),
--     ('dbe0cb96-2817-493b-ac33-d7a54dfcbff1', '1204fbaf-c64a-4420-bac4-42af1622a79b', 'ADULT', 8.00),
--     ('e37db06c-b6cc-4aac-b03d-4aca2078c77d', '031818b7-ef8a-463b-8d43-0055f72c75da', 'ADULT', 8.00),
--     ('4f5da587-217d-4de7-8f43-e036c09c942c', '01055bbc-694d-4458-8554-82361232a67a', 'ADULT', 8.00),
--     ('f8c23c5f-d697-4980-993c-c95839d87e26', '4a0c4d09-f0d1-4dc0-bacd-0cc9978e7fa6', 'ADULT', 8.00),
--     ('beea8c3c-192e-46f5-a02a-5b5723102ae9', 'c3b54d5c-9f10-497b-b90f-d3eb92bb7d62', 'ADULT', 8.00),

--     ('dd2888eb-10b5-4e3e-a5ee-0adc2474596c', '911a7d7f-d84e-426c-949c-dd8ac575ac5f', 'STUDENT', 7.00),
--     ('1f8b921c-c9f3-4cf3-88b7-92df0da5d97e', '1204fbaf-c64a-4420-bac4-42af1622a79b', 'STUDENT', 7.00),
--     ('2d8ddd9b-07e7-4ed5-8dc0-e3717f031e77', '031818b7-ef8a-463b-8d43-0055f72c75da', 'STUDENT', 7.00),
--     ('cb433ab9-891a-476f-8259-372860618ee0', '01055bbc-694d-4458-8554-82361232a67a', 'STUDENT', 7.00),
--     ('e6749775-45c6-4810-a4b6-850143e37c46', '4a0c4d09-f0d1-4dc0-bacd-0cc9978e7fa6', 'STUDENT', 7.00),
--     ('ae63760e-d13b-4c0b-b449-70886bdb7c54', 'c3b54d5c-9f10-497b-b90f-d3eb92bb7d62', 'STUDENT', 7.00),

--     ('77f4c6ad-eb57-4d38-9a7b-e4796d28aeef', '911a7d7f-d84e-426c-949c-dd8ac575ac5f', 'CHILD', 5.00),
--     ('bfde1921-7e4d-4102-9bf4-96d08a3a3442', '1204fbaf-c64a-4420-bac4-42af1622a79b', 'CHILD', 5.00),
--     ('67027075-ef51-447d-b2f4-6acb3bd93e75', '031818b7-ef8a-463b-8d43-0055f72c75da', 'CHILD', 5.00),
--     ('f1d6d27f-f06f-42da-bebf-0ec3074959ad', '01055bbc-694d-4458-8554-82361232a67a', 'CHILD', 5.00),
--     ('380c9b1f-3ab4-4efb-be5a-b03d00857fdb', '4a0c4d09-f0d1-4dc0-bacd-0cc9978e7fa6', 'CHILD', 5.00),
--     ('24dfab6e-d12e-4983-8ee4-b3a3b237e723', 'c3b54d5c-9f10-497b-b90f-d3eb92bb7d62', 'CHILD', 5.00),

--     ('d2fe6169-0f12-4637-9e7f-442e1bb13789', '911a7d7f-d84e-426c-949c-dd8ac575ac5f', 'PENSIONER', 7.00),
--     ('5393356b-c468-4c54-8e47-ae47830d5bad', '1204fbaf-c64a-4420-bac4-42af1622a79b', 'PENSIONER', 7.00),
--     ('4463bba7-2716-4aa7-abd7-e934edb5ea45', '031818b7-ef8a-463b-8d43-0055f72c75da', 'PENSIONER', 7.00),
--     ('0001e13f-9263-4e0f-97dc-a1867b2d1732', '01055bbc-694d-4458-8554-82361232a67a', 'PENSIONER', 7.00),
--     ('09cfc39d-34a0-4f0f-9268-a802de33cad5', '4a0c4d09-f0d1-4dc0-bacd-0cc9978e7fa6', 'PENSIONER', 7.00),
--     ('16572bf7-be09-40e6-887a-008e762d40bc', 'c3b54d5c-9f10-497b-b90f-d3eb92bb7d62', 'PENSIONER', 7.00),

--     ('b5eaf187-3f3e-4a8e-92de-64a89fd07d56', '911a7d7f-d84e-426c-949c-dd8ac575ac5f', 'UNEMPLOYED', 7.00),
--     ('7d4b7f86-0b60-422d-bb25-e960df1e43cb', '1204fbaf-c64a-4420-bac4-42af1622a79b', 'UNEMPLOYED', 7.00),
--     ('9e1fc94b-a93e-4854-bf94-a51076a30746', '031818b7-ef8a-463b-8d43-0055f72c75da', 'UNEMPLOYED', 7.00),
--     ('a8505d80-57c1-4544-9016-77c2305d820a', '01055bbc-694d-4458-8554-82361232a67a', 'UNEMPLOYED', 7.00),
--     ('725b67d7-25bf-4310-860e-df65085cbcb1', '4a0c4d09-f0d1-4dc0-bacd-0cc9978e7fa6', 'UNEMPLOYED', 7.00),
--     ('ef3ab514-f19d-4528-8aea-b1a7b0ba58b7', 'c3b54d5c-9f10-497b-b90f-d3eb92bb7d62', 'UNEMPLOYED', 7.00);
    