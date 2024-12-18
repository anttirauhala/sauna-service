INSERT INTO sauna_private.sauna (id, name, street_address, postal_code, city) VALUES
    ('40d72a2e-319f-4989-a634-f1d123edd29e', 'Rajaportin sauna', 'Pispalan valtatie 9', '33250', 'Tampere');

INSERT INTO sauna_private.opening_hour (id, sauna_id, weekday, opening_time, closing_time) VALUES
    ('607c1878-57d1-4685-8275-d395f3978541', '40d72a2e-319f-4989-a634-f1d123edd29e', 'MONDAY', '16:00', '22:00'),
    ('89ae956b-4d67-46a1-9edf-f054f5bce588', '40d72a2e-319f-4989-a634-f1d123edd29e', 'WEDNESDAY', '16:00', '22:00'),
    ('aa476bd5-6b95-43fc-b7c6-f336785bcfdb', '40d72a2e-319f-4989-a634-f1d123edd29e', 'FRIDAY', '14:00', '22:00'),
    ('5ac8b914-1973-48eb-8a25-04564f3a4fbf', '40d72a2e-319f-4989-a634-f1d123edd29e', 'SATURDAY', '14:00', '22:00');

INSERT INTO sauna_private.price (id, opening_hour_id, price_type, price) VALUES
    -- Maanantai ja keskiviikko
    ('8cbb797f-a965-459c-a884-8f33d44d5f62', '607c1878-57d1-4685-8275-d395f3978541', 'ADULT', 8.00),
    ('d51591e3-fa90-4baf-a377-f5f181e560ba', '607c1878-57d1-4685-8275-d395f3978541', 'PENSIONER', 7.00),
    ('07a33576-655b-4ae8-b441-e0731c80d8bc', '607c1878-57d1-4685-8275-d395f3978541', 'STUDENT', 7.00),
    ('70e5e752-151f-4883-ae4b-a9ed31b1cce9', '607c1878-57d1-4685-8275-d395f3978541', 'UNEMPLOYED', 7.00),
    ('9fa856c3-789a-4bfc-8fac-38059a088331', '607c1878-57d1-4685-8275-d395f3978541', 'CHILD', 4.00),

    ('3c198180-b0cf-4f86-8c53-4ad92af73385', '89ae956b-4d67-46a1-9edf-f054f5bce588', 'ADULT', 8.00),
    ('ecc71712-e8ac-430c-a4eb-e3deec182614', '89ae956b-4d67-46a1-9edf-f054f5bce588', 'PENSIONER', 7.00),
    ('104c17ef-b71f-4cf3-9716-849623a2d527', '89ae956b-4d67-46a1-9edf-f054f5bce588', 'STUDENT', 7.00),
    ('baaa4d0d-2900-4afd-9baf-7dc5b1f42a32', '89ae956b-4d67-46a1-9edf-f054f5bce588', 'UNEMPLOYED', 7.00),
    ('93cb66e2-9397-49f8-ae7f-741076bed826', '89ae956b-4d67-46a1-9edf-f054f5bce588', 'CHILD', 4.00),

    -- Perjantai ja lauantai
    ('f9b47b68-7754-4ca6-87a4-002ae83e0e26', 'aa476bd5-6b95-43fc-b7c6-f336785bcfdb', 'ADULT', 12.00),
    ('4b0de2af-eab2-482e-bb9a-e9059a69dc80', 'aa476bd5-6b95-43fc-b7c6-f336785bcfdb', 'PENSIONER', 11.00),
    ('ad8f0fef-65a6-4427-b757-bc8607196c5a', 'aa476bd5-6b95-43fc-b7c6-f336785bcfdb', 'STUDENT', 11.00),
    ('ab5b6cd4-0a54-410d-b6f8-5d6d33d81c24', 'aa476bd5-6b95-43fc-b7c6-f336785bcfdb', 'UNEMPLOYED', 11.00),
    ('a5fb4f8e-40ed-4a24-b31c-b6c091f648b4', 'aa476bd5-6b95-43fc-b7c6-f336785bcfdb', 'CHILD', 4.00),

    ('138907eb-9005-4140-a282-5b2cadb3fe97', '5ac8b914-1973-48eb-8a25-04564f3a4fbf', 'ADULT', 12.00),
    ('e0429ecb-b6bc-46be-b6ec-80ae5ed7a26c', '5ac8b914-1973-48eb-8a25-04564f3a4fbf', 'PENSIONER', 11.00),
    ('5ac6e10f-973f-4cdf-805c-1c70c84d62c2', '5ac8b914-1973-48eb-8a25-04564f3a4fbf', 'STUDENT', 11.00),
    ('0cc6f661-217d-4d38-896e-3d6f12741769', '5ac8b914-1973-48eb-8a25-04564f3a4fbf', 'UNEMPLOYED', 11.00),
    ('1e12d660-4f54-40b1-ab6c-f53970580c58', '5ac8b914-1973-48eb-8a25-04564f3a4fbf', 'CHILD', 4.00);