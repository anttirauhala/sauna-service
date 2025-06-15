-- Insert Kaupinojan sauna
INSERT INTO sauna_private.sauna (id, name, street_address, postal_code, city, phone, web_page, info, kiosk, restaurant) VALUES
    ('e7017ab9-5c52-4cc8-9be8-bea9c98195ec', 'Kaupinojan sauna', 'Kaupinpuistonkatu 1', '33500', 'Tampere',
            '+358 50 551 7732', 'https://talviuimarit.fi/', "Asiakkaiden pysäköinti poikkeuksia lukuunottamatta tapahtuu ylhäällä olevalla pysäköintialueella. Käteinen ei käy. Lauantain ja sunnuntain ensimmäinen tunti (klo 12:00 - 13:00) on hiljainen tunti saunassa!", true, false);

-- Insert opening hours for Kaupinojan sauna
INSERT INTO sauna_private.opening_hour (id, sauna_id, weekday, opening_time, closing_time) VALUES
    ('572dc6e2-df3a-4839-95b6-0b16966ee804', 'e7017ab9-5c52-4cc8-9be8-bea9c98195ec', 'MONDAY', '15:00', '21:00'),
    ('e7d235af-8f0c-430d-bcf6-b23449528eec', 'e7017ab9-5c52-4cc8-9be8-bea9c98195ec', 'TUESDAY', '15:00', '21:00'),
    ('8232a6f7-1e9b-4ffe-ba09-9121b216195a', 'e7017ab9-5c52-4cc8-9be8-bea9c98195ec', 'WEDNESDAY', '15:00', '21:00'),
    ('7ee261a0-4c09-4f3b-a683-f4948f576c0c', 'e7017ab9-5c52-4cc8-9be8-bea9c98195ec', 'THURSDAY', '15:00', '21:00'),
    ('5274cb70-7933-4989-855e-c4701eb7da2d', 'e7017ab9-5c52-4cc8-9be8-bea9c98195ec', 'FRIDAY', '15:00', '21:00'),
    ('e5b64feb-fd1b-4399-9d60-d726a4c42254', 'e7017ab9-5c52-4cc8-9be8-bea9c98195ec', 'SATURDAY', '12:00', '21:15'),
    ('eafb378b-7722-4541-95d6-4dec7266b65c', 'e7017ab9-5c52-4cc8-9be8-bea9c98195ec', 'SUNDAY', '12:00', '21:15');

-- Insert prices for Kaupinojan sauna
INSERT INTO sauna_private.price (id, opening_hour_id, price_type, price) VALUES
    ('ab19cdf2-1ac8-4116-829e-a5c436650662', '572dc6e2-df3a-4839-95b6-0b16966ee804', 'ADULT', 12.00),
    ('bbb93306-9a1e-4600-b79b-3cb228d73af8', 'e7d235af-8f0c-430d-bcf6-b23449528eec', 'ADULT', 12.00),
    ('daa7e9a0-1bec-4f64-b6e6-74d3d6d66413', '8232a6f7-1e9b-4ffe-ba09-9121b216195a', 'ADULT', 12.00),
    ('c9830246-d50b-465e-9ed5-e8bb9285b70a', '7ee261a0-4c09-4f3b-a683-f4948f576c0c', 'ADULT', 12.00),
    ('6d96a53b-8681-4190-b02a-b7dc8108dd36', '5274cb70-7933-4989-855e-c4701eb7da2d', 'ADULT', 12.00),
    ('1568419f-3e97-43b4-8e1c-af4509d6f183', 'e5b64feb-fd1b-4399-9d60-d726a4c42254', 'ADULT', 12.00),
    ('fd9a2524-9c59-4c87-92aa-84ee6c4685a5', 'eafb378b-7722-4541-95d6-4dec7266b65c', 'ADULT', 12.00),

    ('bbd7d743-f6bf-45e4-a59e-786f6917ffad', '572dc6e2-df3a-4839-95b6-0b16966ee804', 'CHILD', 5.00),
    ('5b18a42b-0a85-4f42-aedf-bfc70db8848b', 'e7d235af-8f0c-430d-bcf6-b23449528eec', 'CHILD', 5.00),
    ('dd1fb254-97d3-4c6d-b3a1-587a1f0b7bdf', '8232a6f7-1e9b-4ffe-ba09-9121b216195a', 'CHILD', 5.00),
    ('33a2bfc3-51c2-4e81-b27b-1dee3e5ba5e5', '7ee261a0-4c09-4f3b-a683-f4948f576c0c', 'CHILD', 5.00),
    ('a6a40ba8-d0d5-46aa-9401-b9d0dc0b11ca', '5274cb70-7933-4989-855e-c4701eb7da2d', 'CHILD', 5.00),
    ('1abfb305-68da-4bf7-9252-3e4d4bd1f896', 'e5b64feb-fd1b-4399-9d60-d726a4c42254', 'CHILD', 5.00),
    ('e600b128-2c6b-446d-800c-5ad48e6293c4', 'eafb378b-7722-4541-95d6-4dec7266b65c', 'CHILD', 5.00);