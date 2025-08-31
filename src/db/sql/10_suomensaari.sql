
INSERT INTO sauna_private.sauna (id, name, street_address, postal_code, city, phone, web_page, info, kiosk, restaurant) VALUES
    ('73ca9aa4-01f9-4ec2-9922-df4982fe3a1e', 'Suomensaaren sauna', 'Suomensaarenkatu 9', '33410', 'Tampere',
        '', 'https://lielahdenkipina.fi/suomensaarensauna/', 'Saunalle tulee vain järvivesi, joka on hyvä huomioida ottamalla mukaan vettä juotavaksi. Kahvio. Käteinen ei käy.', true, false);


-- Insert winter opening hours for Suomensaaren sauna
INSERT INTO sauna_private.opening_hour (id, sauna_id, weekday, opening_time, closing_time) VALUES
    ('a61f467c-2e49-43a0-a195-a3f6470c006c', '73ca9aa4-01f9-4ec2-9922-df4982fe3a1e', 'MONDAY', '16:00', '20:00'),
    ('63913988-7a19-48f1-b8ff-7323156ca1df', '73ca9aa4-01f9-4ec2-9922-df4982fe3a1e', 'WEDNESDAY', '16:00', '20:00'),
    ('a05dd246-4041-46e6-a0c0-a92ccb39600b', '73ca9aa4-01f9-4ec2-9922-df4982fe3a1e', 'FRIDAY', '16:00', '21:00'),
    ('84b5d80f-1f4a-4d16-9faf-f8bfbad124c7', '73ca9aa4-01f9-4ec2-9922-df4982fe3a1e', 'SATURDAY', '14:00', '18:00'),
    ('dd96f997-490a-496b-bc63-f57f4690cb81', '73ca9aa4-01f9-4ec2-9922-df4982fe3a1e', 'SUNDAY', '15:00', '19:00');

-- OR

-- Insert summer opening hours for Suomensaaren sauna (1.5.-31.8.)
-- INSERT INTO sauna_private.opening_hour (id, sauna_id, weekday, opening_time, closing_time) VALUES
--     ('a61f467c-2e49-43a0-a195-a3f6470c006c', '73ca9aa4-01f9-4ec2-9922-df4982fe3a1e', 'MONDAY', '17:00', '21:00'),
--     ('63913988-7a19-48f1-b8ff-7323156ca1df', '73ca9aa4-01f9-4ec2-9922-df4982fe3a1e', 'WEDNESDAY', '17:00', '21:00'),
--     ('a05dd246-4041-46e6-a0c0-a92ccb39600b', '73ca9aa4-01f9-4ec2-9922-df4982fe3a1e', 'FRIDAY', '18:00', '22:00'),
--     ('84b5d80f-1f4a-4d16-9faf-f8bfbad124c7', '73ca9aa4-01f9-4ec2-9922-df4982fe3a1e', 'SATURDAY', '16:00', '19:00');

-- -- Insert prices for Suomensaaren sauna
-- INSERT INTO sauna_private.price (id, opening_hour_id, price_type, price) VALUES
--     ('c091069a-34ff-41ce-97db-4955242b60b8', 'a61f467c-2e49-43a0-a195-a3f6470c006c', 'ADULT', 11.00),
--     ('ddbbd274-a76c-4517-98ce-800f569b690f', 'a61f467c-2e49-43a0-a195-a3f6470c006c', 'RETIRED_STUDENT', 7.00),
--     ('7fb0f330-f120-4785-b865-47e11f391aba', 'a61f467c-2e49-43a0-a195-a3f6470c006c', 'CHILD', 5.00),
--     ('7925b2bd-b258-4539-86e6-257fb7eac83a', '63913988-7a19-48f1-b8ff-7323156ca1df', 'ADULT', 11.00),
--     ('06f4ec0a-ab34-4b55-a46e-a9eb3b5faea1', '63913988-7a19-48f1-b8ff-7323156ca1df', 'RETIRED_STUDENT', 7.00),
--     ('2ce4aa4f-0a62-44ed-a9d2-aa7ce9278cfa', '63913988-7a19-48f1-b8ff-7323156ca1df', 'CHILD', 5.00),
--     ('030ad8e9-1b04-48a5-82b1-c33c3e45b728', 'a05dd246-4041-46e6-a0c0-a92ccb39600b', 'ADULT', 11.00),
--     ('7c50f00e-52a9-4b60-9974-092e28e8e11d', 'a05dd246-4041-46e6-a0c0-a92ccb39600b', 'RETIRED_STUDENT', 7.00),
--     ('77e34dfa-2c1c-4f7b-9d2f-01d0d8613ec0', 'a05dd246-4041-46e6-a0c0-a92ccb39600b', 'CHILD', 5.00),
--     ('950132cf-2bd3-4dec-b2a2-a03d7359d2fc', '84b5d80f-1f4a-4d16-9faf-f8bfbad124c7', 'ADULT', 11.00),
--     ('43a2b5b5-431c-41ed-b2a5-e22859c09132', '84b5d80f-1f4a-4d16-9faf-f8bfbad124c7', 'RETIRED_STUDENT', 7.00),
--     ('61427993-ee2a-4acf-9572-9a1b5ff4c921', '84b5d80f-1f4a-4d16-9faf-f8bfbad124c7', 'CHILD', 5.00),
--     ('b155a4dd-ba09-4fbc-8e0c-6009f31b4162', 'dd96f997-490a-496b-bc63-f57f4690cb81', 'ADULT', 11.00),
--     ('1f07d69e-d5a0-4847-ac3e-71d091910307', 'dd96f997-490a-496b-bc63-f57f4690cb81', 'RETIRED_STUDENT', 7.00),
--     ('d640c18e-56c2-4e18-ac5b-6508656e2cf4', 'dd96f997-490a-496b-bc63-f57f4690cb81', 'CHILD', 5.00);