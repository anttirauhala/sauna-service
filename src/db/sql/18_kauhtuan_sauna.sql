-- Kauhtuan sauna
INSERT INTO sauna_private.sauna (id, name, street_address, postal_code, city, phone, web_page, info, kiosk, restaurant) VALUES
    ('ee4ee3cc-7338-4a97-ab76-2bb51af05d11', 'Kauhtuan sauna', 'Kauhtuantie 6', '39200', 'Kyröskoski', '044-5400882', 
    'https://www.hameenkyrontalviuimarit.fi/', 
    'Karttahakuun kannattaa laittaa Kauhtuan sauna. Yleisen saunavuoron aikana on grillikota ja sähkögrilli käytössä makkaran paistolle. Tavalliseen saunaan mahtuu n.30 henkilöä, savusaunaan n.18 henkilöä. Ma, ke, pe: tavallinen ja savusauna. La tavallinen sauna.',
     false, false);

-- Insert opening hours for Kauhtuan sauna
INSERT INTO sauna_private.opening_hour (id, sauna_id, weekday, opening_time, closing_time) VALUES
    ('9791b4a1-69e1-401f-971f-39c32c6a14a6', 'ee4ee3cc-7338-4a97-ab76-2bb51af05d11', 'MONDAY', '15:30', '20:30'),
    ('4c12e967-aa90-42d0-b6d0-07f3d47ea972', 'ee4ee3cc-7338-4a97-ab76-2bb51af05d11', 'WEDNESDAY', '15:30', '20:30'),
    ('57f83be2-3bfb-4459-b6bf-9fdf67e0bf06', 'ee4ee3cc-7338-4a97-ab76-2bb51af05d11', 'FRIDAY', '15:30', '20:30'),
    ('2308ad8c-69f0-442a-994d-51c19e5b3b03', 'ee4ee3cc-7338-4a97-ab76-2bb51af05d11', 'SATURDAY', '14:00', '17:30');

-- Insert prices for Kauhtuan sauna
INSERT INTO sauna_private.price (id, opening_hour_id, price_type, price) VALUES
    ('36571a18-7482-4df8-b02b-4adb1a6795bb', '9791b4a1-69e1-401f-971f-39c32c6a14a6', 'ADULT', 9.00),
    ('d1d8a34b-0d54-4ce1-838f-3c076ca23390', '9791b4a1-69e1-401f-971f-39c32c6a14a6', 'CHILD', 2.00),
    ('41f89f4c-0cc5-4ca3-9818-507bd63b24f7', '4c12e967-aa90-42d0-b6d0-07f3d47ea972', 'ADULT', 9.00),
    ('c0b7fdb7-4001-4462-a94d-8dab285330c1', '4c12e967-aa90-42d0-b6d0-07f3d47ea972', 'CHILD', 2.00),
    ('cfea7d6e-4af0-45fb-a4ff-5258a486e773', '57f83be2-3bfb-4459-b6bf-9fdf67e0bf06', 'ADULT', 9.00),
    ('b9a1cd42-2dfc-498b-8eb5-137e1f876173', '57f83be2-3bfb-4459-b6bf-9fdf67e0bf06', 'CHILD', 2.00),
    ('82184f72-ff75-4d23-879c-dde2fa2d7a8e', '2308ad8c-69f0-442a-994d-51c19e5b3b03', 'ADULT', 9.00),
    ('4caea64f-92e2-4441-b1aa-3cc2b2efe184', '2308ad8c-69f0-442a-994d-51c19e5b3b03', 'CHILD', 2.00);