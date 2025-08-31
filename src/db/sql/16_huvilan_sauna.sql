-- Insert Huvilan sauna
INSERT INTO sauna_private.sauna (id, name, street_address, postal_code, city, web_page, info, kiosk, restaurant) VALUES
    ('0fb39581-d4b6-472f-851c-d43b770b1325', 'Huvilan saunat', 'Uramonkatu 9', '33240', 'Tampere', 'https://www.tahmelanhuvila.fi/sauna/', 
    'Tahmelan Huvilan kaksi saunaa Pyhäjärven rannalla. Oma puulämmitteinen sisäsauna ja 1.9.2024 avattu Rantaportti- pihasauna. Mahdollisuus kastautua Pyhäjärvessä myös talvisin. HUOM! NAISTEN VUORO TO KLO 19-21. Kesäkausi 1.6.-30.9.2025.', true, false);

-- Insert summer opening hours for Huvilan sauna (1.6.-30.9.2025)
INSERT INTO sauna_private.opening_hour (id, sauna_id, weekday, opening_time, closing_time) VALUES
    ('9cffff46-fa09-4002-98b4-5a743370475a', '0fb39581-d4b6-472f-851c-d43b770b1325', 'TUESDAY', '15:00', '21:00'),
    ('2f76abae-3329-4cea-9648-d7d71165bfbc', '0fb39581-d4b6-472f-851c-d43b770b1325', 'THURSDAY', '15:00', '19:00'),
    ('25239230-8670-4e7e-bc8b-8a921eb1f3d6', '0fb39581-d4b6-472f-851c-d43b770b1325', 'THURSDAY', '19:00', '21:00'),
    ('e521b98e-48d2-4d8a-b151-f528804da6e6', '0fb39581-d4b6-472f-851c-d43b770b1325', 'SUNDAY', '14:00', '21:00');

-- Insert prices for Huvilan sauna
INSERT INTO sauna_private.price (id, opening_hour_id, price_type, price) VALUES
    ('21ad4692-d8db-411c-9bdc-e4f6d02e5848', '9cffff46-fa09-4002-98b4-5a743370475a', 'ADULT', 8.00),
    ('7439e8f9-b7e0-418c-957d-8f1bcdf449a1', '9cffff46-fa09-4002-98b4-5a743370475a', 'CHILD', 7.00),
    ('ce983d51-0b30-4cf5-8614-0b8d4c9f4552', '2f76abae-3329-4cea-9648-d7d71165bfbc', 'ADULT', 8.00),
    ('67419ae9-6ae6-4971-b476-bddde8fb2713', '2f76abae-3329-4cea-9648-d7d71165bfbc', 'CHILD', 7.00),
    ('77879e06-f1a0-4260-959a-508ff491bfe3', '25239230-8670-4e7e-bc8b-8a921eb1f3d6', 'ADULT', 8.00),
    ('22aebb07-1aff-4202-8bf8-196f1f213a1e', '25239230-8670-4e7e-bc8b-8a921eb1f3d6', 'CHILD', 7.00),
    ('bd293c71-8554-4e35-b2e9-51a38e114638', 'e521b98e-48d2-4d8a-b151-f528804da6e6', 'ADULT', 12.00),
    ('d0274466-c866-4671-9361-4cc3c1040cb6', 'e521b98e-48d2-4d8a-b151-f528804da6e6', 'CHILD', 10.00);