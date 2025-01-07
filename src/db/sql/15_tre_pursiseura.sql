-- Insert Tampereen pursiseura avantolautta sauna
INSERT INTO sauna_private.sauna (id, name, street_address, postal_code, city, phone, web_page, info, kiosk, restaurant) VALUES
    ('1989995a-a625-4697-810f-db5b8ab55686', 'Tampereen pursiseura avantolautta', 'Kekkosenkatu 10', '33100', 'Tampere',
    '', 'https://taps.fi/tuote/avantosaunan-varaus/', 'Uusi saunakokemus Naistenlahdessa. Varaa tunnin saunavuoro netistä etukäteen.', false, false);

-- Insert opening hours for Tampereen pursiseura avantolautta sauna
INSERT INTO sauna_private.opening_hour (id, sauna_id, weekday, opening_time, closing_time) VALUES
    ('dc9b30f3-a338-4084-8c3a-7b346b2d352e', '1989995a-a625-4697-810f-db5b8ab55686', 'FRIDAY', '18:00', '21:00'),
    ('8a453ce0-014c-49b2-842d-d821f6d53f2c', '1989995a-a625-4697-810f-db5b8ab55686', 'SATURDAY', '18:00', '21:00');

-- Insert prices for Tampereen pursiseura avantolautta sauna
INSERT INTO sauna_private.price (id, opening_hour_id, price_type, price) VALUES
    ('b3969cd9-bf0e-4e06-8a79-a1cbfaf73eb2', 'dc9b30f3-a338-4084-8c3a-7b346b2d352e', 'ADULT', 9.00),
    ('a6b98da2-8144-4fce-acd0-d987c389e6b6', '8a453ce0-014c-49b2-842d-d821f6d53f2c', 'ADULT', 9.00);