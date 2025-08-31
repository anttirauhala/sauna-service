-- Apian sauna
INSERT INTO sauna_private.sauna (id, name, street_address, postal_code, city, phone, web_page, info, kiosk, restaurant) VALUES
    ('19132d75-07d3-42fe-b072-14f56be104af', 'Apian sauna', 'Urheilukatu 20', '37600', 'Valkeakoski', '', 'https://apianavantouimarit.fi/',
     'Pysäköintialueen osoite on Urheilukatu 16-18, sauna löytyy mäen juuresta Apian uimarannalta. Käteinen ei käy. Talvikausi syyskuun viimeisestä sunnuntaista alkaen.', false, false);

-- Insert opening hours for Apian sauna
INSERT INTO sauna_private.opening_hour (id, sauna_id, weekday, opening_time, closing_time) VALUES
    ('3530f216-8bc1-49f0-b482-76545a5e6ed4', '19132d75-07d3-42fe-b072-14f56be104af', 'TUESDAY', '14:00', '21:00'),
    ('b7a8c000-c517-4aaf-a8de-aa5027b769ae', '19132d75-07d3-42fe-b072-14f56be104af', 'THURSDAY', '14:00', '21:00'),
    ('fe017426-28c1-4e2a-bebf-6a752ad499a3', '19132d75-07d3-42fe-b072-14f56be104af', 'FRIDAY', '14:00', '21:00'),
    ('3f0fe722-537b-4aea-9196-a8a396c6fea7', '19132d75-07d3-42fe-b072-14f56be104af', 'SUNDAY', '11:00', '20:00');

-- Insert prices for Apian sauna
INSERT INTO sauna_private.price (id, opening_hour_id, price_type, price) VALUES
    ('f41b121b-9ce0-4fe3-9778-4543b4f01768', '3530f216-8bc1-49f0-b482-76545a5e6ed4', 'ADULT', 6.00),
    ('df202900-50f6-429c-b2eb-93836e2381eb', 'b7a8c000-c517-4aaf-a8de-aa5027b769ae', 'ADULT', 6.00),
    ('519712b6-ad08-4410-b1e8-d0c7d4dd7c9d', 'fe017426-28c1-4e2a-bebf-6a752ad499a3', 'ADULT', 6.00),
    ('6ff17db8-3400-4573-b96a-32d2a04c4758', '3f0fe722-537b-4aea-9196-a8a396c6fea7', 'ADULT', 6.00);