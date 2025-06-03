-- Insert Tohlopin tynnyrisauna
INSERT INTO sauna_private.sauna (id, name, street_address, postal_code, city, phone, web_page, info, kiosk, restaurant) VALUES
    ('75d036ab-e5f4-4a11-aeed-128506047a39', 'Tohlopin tynnyrisauna', 'Pyydyspohjankatu 1', '33310', 'Tampere',
    '', 'https://sites.google.com/view/tohlopinuimaseura', 'Ei suihkuja. Vaatteiden vaihto uimakopissa.', false, false);


-- Insert opening hours for Tohlopin tynnyrisauna
INSERT INTO sauna_private.opening_hour (id, sauna_id, weekday, opening_time, closing_time) VALUES
    ('f6f76c75-19c5-4d26-aba6-3c4c3eb6fb61', '75d036ab-e5f4-4a11-aeed-128506047a39', 'TUESDAY', '17:30', '21:00'),
    ('558d4244-0d8d-4f9a-86ce-a2ffdfd91714', '75d036ab-e5f4-4a11-aeed-128506047a39', 'WEDNESDAY', '17:30', '21:00'),
    ('95345131-32db-4363-8775-bdd64574ef37', '75d036ab-e5f4-4a11-aeed-128506047a39', 'THURSDAY', '17:30', '21:00'),
    ('9967b0e0-3f88-4324-b45c-92149927be43', '75d036ab-e5f4-4a11-aeed-128506047a39', 'FRIDAY', '17:30', '21:00'),
    ('9ab75f57-2a46-4a1c-a721-5b8f46924bbd', '75d036ab-e5f4-4a11-aeed-128506047a39', 'SATURDAY', '16:00', '19:00'),
    ('a4299e69-fc53-4f1d-aa60-73487e4e4a0f', '75d036ab-e5f4-4a11-aeed-128506047a39', 'SUNDAY', '17:30', '21:00');

-- Insert prices for Tohlopin tynnyrisauna
INSERT INTO sauna_private.price (id, opening_hour_id, price_type, price) VALUES
    ('b05a3705-ba4c-4710-b852-e2ff37377a98', 'f6f76c75-19c5-4d26-aba6-3c4c3eb6fb61', 'ADULT', 6.00),
    ('93b0230a-933d-465f-ba29-8a337755a227', '558d4244-0d8d-4f9a-86ce-a2ffdfd91714', 'ADULT', 6.00),
    ('0cfa739c-2912-43fe-8f71-773eecc9ecd1', '95345131-32db-4363-8775-bdd64574ef37', 'ADULT', 6.00),
    ('fcd47be8-3ea0-44d1-84b1-359f709efc8f', '9967b0e0-3f88-4324-b45c-92149927be43', 'ADULT', 6.00),
    ('acd0d5ff-b3e3-4782-adf6-86d78f080969', '9ab75f57-2a46-4a1c-a721-5b8f46924bbd', 'ADULT', 6.00),
    ('b95ea363-56d6-4629-a075-ab3c225ffc33', 'a4299e69-fc53-4f1d-aa60-73487e4e4a0f', 'ADULT', 6.00),

    ('e4ee8a73-83c4-41ef-baa5-6ad24780a25c', 'f6f76c75-19c5-4d26-aba6-3c4c3eb6fb61', 'CHILD', 3.00),
    ('975760e1-dd29-4f52-8b40-175528e08c86', '558d4244-0d8d-4f9a-86ce-a2ffdfd91714', 'CHILD', 3.00),
    ('fbbdbf39-1cd8-4893-b03e-adc89160d434', '95345131-32db-4363-8775-bdd64574ef37', 'CHILD', 3.00),
    ('b830af59-8e9a-4b8e-a4c1-17ee2179ebf3', '9967b0e0-3f88-4324-b45c-92149927be43', 'CHILD', 3.00),
    ('2abeac5e-e5db-47a0-a6e1-96aedf3f2d3e', '9ab75f57-2a46-4a1c-a721-5b8f46924bbd', 'CHILD', 3.00),
    ('1a436b72-565a-417e-958c-ddd01fea0475', 'a4299e69-fc53-4f1d-aa60-73487e4e4a0f', 'CHILD', 3.00);