-- Insert Kaukajärvi sauna
INSERT INTO sauna_private.sauna (id, name, street_address, postal_code, city, phone, web_page, info, kiosk, restaurant) VALUES
    ('24a7dd00-bcfb-46c9-9e12-32a7a6c87fca', 'Kaukajärven sauna', 'Kangasalantie 80', '33730', 'Tampere',
      '+358 40 590 0539', 'https://www.kaukajarvensauna.fi/', 'Huomioithan liikennemerkit parkkeeramisesta. Hiljaiset tunnit: ma & ke klo 17.00-18.00 (vanhat saunat), la & su klo 16.00-17.00 (uusi sauna).', true, false);

-- Insert opening hours for Kaukajärvi
INSERT INTO sauna_private.opening_hour (id, sauna_id, weekday, opening_time, closing_time) VALUES
    ('f26237ca-b6e1-4f43-936c-cfe9b0d8ca34', '24a7dd00-bcfb-46c9-9e12-32a7a6c87fca', 'MONDAY', '12:00', '22:00'),
    ('fbdf2943-ce20-4e14-85c1-cc8a9eed222c', '24a7dd00-bcfb-46c9-9e12-32a7a6c87fca', 'TUESDAY', '12:00', '22:00'),
    ('18047c83-65f1-4161-b8db-b76b88cd265a', '24a7dd00-bcfb-46c9-9e12-32a7a6c87fca', 'WEDNESDAY', '12:00', '22:00'),
    ('e034198c-ed01-40aa-81ae-7af440c0c876', '24a7dd00-bcfb-46c9-9e12-32a7a6c87fca', 'THURSDAY', '12:00', '22:00'),
    ('b112e21b-3391-4f93-aa03-e9a9d371de8d', '24a7dd00-bcfb-46c9-9e12-32a7a6c87fca', 'FRIDAY', '12:00', '22:00'),
    ('6aaed8dc-8d18-450d-9db2-c559e146b698', '24a7dd00-bcfb-46c9-9e12-32a7a6c87fca', 'SATURDAY', '12:00', '22:00'),
    ('dfa89100-0a4e-4476-974c-88fea7496417', '24a7dd00-bcfb-46c9-9e12-32a7a6c87fca', 'SUNDAY', '12:00', '22:00');

-- Insert prices for Kaukajärvi
INSERT INTO sauna_private.price (id, opening_hour_id, price_type, price) VALUES
    ('ea36ecff-8a2b-4b15-871d-509e80f4fc3e', 'f26237ca-b6e1-4f43-936c-cfe9b0d8ca34', 'ADULT', 11.00),
    ('f249d368-1c52-42a1-a7d3-ba76984fb0e5', 'fbdf2943-ce20-4e14-85c1-cc8a9eed222c', 'ADULT', 11.00),
    ('4a93a2bb-f923-488a-b1fa-fe019241a875', '18047c83-65f1-4161-b8db-b76b88cd265a', 'ADULT', 11.00),
    ('89a699e6-f4e1-436f-a9a5-5c3bb8eeeee3', 'e034198c-ed01-40aa-81ae-7af440c0c876', 'ADULT', 11.00),
    ('68e60ccd-1a57-4445-903c-01a7fb73a75c', 'b112e21b-3391-4f93-aa03-e9a9d371de8d', 'ADULT', 11.00),
    ('74db766f-21f1-48c8-92f8-5c4d36197dcd', '6aaed8dc-8d18-450d-9db2-c559e146b698', 'ADULT', 11.00),
    ('0fe9ad51-914e-4e8b-a111-a11d41da546e', 'dfa89100-0a4e-4476-974c-88fea7496417', 'ADULT', 11.00),

    ('e5e5b50d-1183-4738-bd19-ba5ec895572f', 'f26237ca-b6e1-4f43-936c-cfe9b0d8ca34', 'CHILD', 6.00),
    ('088302a5-2206-471e-8f92-4cdbeb286876', 'fbdf2943-ce20-4e14-85c1-cc8a9eed222c', 'CHILD', 6.00),
    ('391e3c2d-a29e-4cfe-97bd-7a174a3c94a1', '18047c83-65f1-4161-b8db-b76b88cd265a', 'CHILD', 6.00),
    ('8d704fcc-d5af-4ba0-b917-31eb570e6622', 'e034198c-ed01-40aa-81ae-7af440c0c876', 'CHILD', 6.00),
    ('783469a3-95b9-4850-8689-c184c3b6ba59', 'b112e21b-3391-4f93-aa03-e9a9d371de8d', 'CHILD', 6.00),
    ('6bc6d3ff-e8df-44c7-aa85-eab00951bdcf', '6aaed8dc-8d18-450d-9db2-c559e146b698', 'CHILD', 6.00),
    ('36a2148f-91cc-4e56-8ec7-461fed8c051d', 'dfa89100-0a4e-4476-974c-88fea7496417', 'CHILD', 6.00),

    ('a98ee685-0002-4edd-b3bb-012039c201ef', 'f26237ca-b6e1-4f43-936c-cfe9b0d8ca34', 'PENSIONER', 9.00),
    ('fa218c47-3a4c-4cc7-af44-3caa9648c751', 'fbdf2943-ce20-4e14-85c1-cc8a9eed222c', 'PENSIONER', 9.00),
    ('ef4cd726-e0f6-4fd5-92b4-f29c9372667e', '18047c83-65f1-4161-b8db-b76b88cd265a', 'PENSIONER', 9.00),
    ('2f7bdef0-9bee-49b4-9fc6-a9c409756a14', 'e034198c-ed01-40aa-81ae-7af440c0c876', 'PENSIONER', 9.00),
    ('9dde730a-5aff-4d7b-8d21-cc274b22e848', 'b112e21b-3391-4f93-aa03-e9a9d371de8d', 'PENSIONER', 9.00),
    ('427ff564-28f3-455b-9e2c-b8f48ef68869', '6aaed8dc-8d18-450d-9db2-c559e146b698', 'PENSIONER', 9.00),
    ('84cb6552-d742-4628-b3fc-ab9a006fe678', 'dfa89100-0a4e-4476-974c-88fea7496417', 'PENSIONER', 9.00),

    ('60f155e2-d0a4-4c41-8b86-1e4907175c80', 'f26237ca-b6e1-4f43-936c-cfe9b0d8ca34', 'STUDENT', 9.00),
    ('30ec5e03-a0c9-4876-b1e4-96ab2dbda568', 'fbdf2943-ce20-4e14-85c1-cc8a9eed222c', 'STUDENT', 9.00),
    ('44d688bd-2425-411d-b9cf-2bc4f4a45a50', '18047c83-65f1-4161-b8db-b76b88cd265a', 'STUDENT', 9.00),
    ('2a8985d8-357f-49b6-bce3-13dfa43b59b9', 'e034198c-ed01-40aa-81ae-7af440c0c876', 'STUDENT', 9.00),
    ('5bd86340-5cb0-4440-a7b6-54ec3f4fdf4a', 'b112e21b-3391-4f93-aa03-e9a9d371de8d', 'STUDENT', 9.00),
    ('a7fef312-3b96-4ea5-987f-bb8f9dfda1c3', '6aaed8dc-8d18-450d-9db2-c559e146b698', 'STUDENT', 9.00),
    ('e8055d0c-7338-452a-a3a8-890d778eb17d', 'dfa89100-0a4e-4476-974c-88fea7496417', 'STUDENT', 9.00),

    ('f06dca0a-1e09-47c1-8311-aef5f1e2d925', 'f26237ca-b6e1-4f43-936c-cfe9b0d8ca34', 'UNEMPLOYED', 9.00),
    ('406d7af9-ebe3-429c-8861-ab6f1e2eb052', 'fbdf2943-ce20-4e14-85c1-cc8a9eed222c', 'UNEMPLOYED', 9.00),
    ('bae17b8e-20b2-4151-90f9-e65931583e9e', '18047c83-65f1-4161-b8db-b76b88cd265a', 'UNEMPLOYED', 9.00),
    ('5e66cf48-2191-4346-bb8c-bd77ab2616d5', 'e034198c-ed01-40aa-81ae-7af440c0c876', 'UNEMPLOYED', 9.00),
    ('614c291f-0fde-45ae-a497-8957ca46e936', 'b112e21b-3391-4f93-aa03-e9a9d371de8d', 'UNEMPLOYED', 9.00),
    ('71d9d5bc-8494-41c9-a001-1266175084ad', '6aaed8dc-8d18-450d-9db2-c559e146b698', 'UNEMPLOYED', 9.00),
    ('9709026a-ddae-4e50-bfc3-24ed651f8f1b', 'dfa89100-0a4e-4476-974c-88fea7496417', 'UNEMPLOYED', 9.00),

    ('025cb419-f225-4743-9fb3-5e593cfb7232', 'f26237ca-b6e1-4f43-936c-cfe9b0d8ca34', 'CONSRIPT', 9.00),
    ('a7249ea3-abac-4bb1-b413-55d39147fa0f', 'fbdf2943-ce20-4e14-85c1-cc8a9eed222c', 'CONSRIPT', 9.00),
    ('4d08295f-0a73-4542-9b8c-118d5e17681a', '18047c83-65f1-4161-b8db-b76b88cd265a', 'CONSRIPT', 9.00),
    ('ddec7dc9-5986-4b47-a82b-f54ba87613e5', 'e034198c-ed01-40aa-81ae-7af440c0c876', 'CONSRIPT', 9.00),
    ('595f3876-03ab-4a89-bb03-bca9c2f15f43', 'b112e21b-3391-4f93-aa03-e9a9d371de8d', 'CONSRIPT', 9.00),
    ('a96a5816-319e-4a60-8dcf-dfb9e7e1cffe', '6aaed8dc-8d18-450d-9db2-c559e146b698', 'CONSRIPT', 9.00),
    ('89f53d32-8c44-4116-8a93-83cd59b1488c', 'dfa89100-0a4e-4476-974c-88fea7496417', 'CONSRIPT', 9.00);