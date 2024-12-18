-- Insert Halkoniemi sauna
INSERT INTO sauna_private.sauna (id, name, street_address, postal_code, city) VALUES
    ('a60daa6e-16f4-456c-8259-d7b1d663bdd3', 'Halkoniemen sauna', 'Halkoniemi', '37120', 'Nokia');

-- Insert opening hours for Halkoniemi
INSERT INTO sauna_private.opening_hour (id, sauna_id, weekday, opening_time, closing_time) VALUES
    ('d31468b0-71ac-4137-8efb-2378b19dafc1', 'a60daa6e-16f4-456c-8259-d7b1d663bdd3', 'TUESDAY', '16:00', '23:00'),
    ('b60afa2a-54e7-4afe-a1e4-b5cf2a05460e', 'a60daa6e-16f4-456c-8259-d7b1d663bdd3', 'WEDNESDAY', '16:00', '22:00'),
    ('2cc504ff-a5db-436e-81b7-8106ad6df8ea', 'a60daa6e-16f4-456c-8259-d7b1d663bdd3', 'THURSDAY', '16:00', '23:00'),
    ('3c41abad-ab88-4834-b3e5-bb61db2062e1', 'a60daa6e-16f4-456c-8259-d7b1d663bdd3', 'FRIDAY', '17:00', '23:30'),
    ('4159fe2f-e6c2-4596-8605-11341d817dd4', 'a60daa6e-16f4-456c-8259-d7b1d663bdd3', 'SATURDAY', '14:00', '22:00'),
    ('dca84f4a-2f38-4c54-adf7-3d176d9ae7e5', 'a60daa6e-16f4-456c-8259-d7b1d663bdd3', 'SUNDAY', '14:00', '22:00');

-- Insert prices for Halkoniemi
INSERT INTO sauna_private.price (id, opening_hour_id, price_type, price) VALUES
    ('00eb3990-4816-45d3-866f-61b41dcc80db', 'd31468b0-71ac-4137-8efb-2378b19dafc1', 'ADULT', 8.00),
    ('88c1a11a-cf0a-4e05-b038-f1ed8f118cce', 'b60afa2a-54e7-4afe-a1e4-b5cf2a05460e', 'ADULT', 8.00),
    ('62299545-3229-4ef0-ada2-fa1b19a7da72', '2cc504ff-a5db-436e-81b7-8106ad6df8ea', 'ADULT', 8.00),
    ('eaa4e558-83fb-4e79-b688-ef48b0b3b757', '3c41abad-ab88-4834-b3e5-bb61db2062e1', 'ADULT', 8.00),
    ('2537db85-2066-45f7-a17a-1375f3efa738', '4159fe2f-e6c2-4596-8605-11341d817dd4', 'ADULT', 8.00),
    ('569d1d71-0196-47ce-95da-9d63b8bd9290', 'dca84f4a-2f38-4c54-adf7-3d176d9ae7e5', 'ADULT', 8.00),

    ('af97bc68-03f0-4619-afd7-7fc305492ce5', 'd31468b0-71ac-4137-8efb-2378b19dafc1', 'CHILD', 2.00),
    ('b4ce2277-be84-4169-8a8e-3a1de98a4878', 'b60afa2a-54e7-4afe-a1e4-b5cf2a05460e', 'CHILD', 2.00),
    ('3ad36a2d-f5f0-4900-a166-8d1d97a4cdda', '2cc504ff-a5db-436e-81b7-8106ad6df8ea', 'CHILD', 2.00),
    ('c7083afa-fe55-40a8-bae7-8a73370c85d3', '3c41abad-ab88-4834-b3e5-bb61db2062e1', 'CHILD', 2.00),
    ('b45955cd-4b6e-43fa-b8cf-889e817a0d68', '4159fe2f-e6c2-4596-8605-11341d817dd4', 'CHILD', 2.00),
    ('043a1529-5bbb-4f5c-a476-53a84ed2987d', 'dca84f4a-2f38-4c54-adf7-3d176d9ae7e5', 'CHILD', 2.00);