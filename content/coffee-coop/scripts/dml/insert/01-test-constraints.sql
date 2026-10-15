-- ##################################################
-- # COFFEE COOP - CONSTRAINT TESTS                 #
-- ##################################################
-- RUN IN coffee_coop_db - cc_admin
-- Run with: psql -U cc_admin -d coffee_coop_db -f scripts/dml/insert/01-test-constraints.sql
-- Errors do not stop the script: psql prints them and continues.

-- ==================================================
-- 00. VALID BASE DATA (all of these must succeed)
-- ==================================================

INSERT INTO geo.departments (department_code, department_name)
VALUES ('99', 'Test Department');

INSERT INTO geo.municipalities (municipality_code, municipality_name, department_code)
VALUES ('99001', 'Test Municipality', '99');

INSERT INTO farm.farmers (document_number, first_name, last_name, birth_date,
                          gender, phone_number, email, membership_date, municipality_code)
VALUES ('TEST-001', 'Ana', 'Valida', '1985-05-20', 'F', '3001112233',
        'ana.valida@test.com', '2024-01-10', '99001');

INSERT INTO farm.farms (farmer_id, municipality_code, farm_name, rural_district,
                        total_area_ha, altitude_masl, registered_at)
VALUES ((SELECT farmer_id FROM farm.farmers WHERE document_number = 'TEST-001'),
        '99001', 'Finca La Prueba', 'Vereda Test', 5.5, 1600, now());

-- ==================================================
-- 01. FARMER UNDER 18 AT MEMBERSHIP DATE
-- ==================================================
-- Born 2015, joined 2024: he was 9 years old.
-- PostgreSQL error: (fill in after running)
-- Constraint that stopped it: (fill in; if no error, write "none")
INSERT INTO farm.farmers (document_number, first_name, last_name, birth_date,
                          gender, phone_number, email, membership_date, municipality_code)
VALUES ('TEST-002', 'Pedro', 'Menor', '2015-01-01', 'M', '3004445566',
        'pedro.menor@test.com', '2024-01-10', '99001');

-- ==================================================
-- 02. TWO FARMS WITH THE SAME NAME FOR THE SAME FARMER
-- ==================================================
-- PostgreSQL error: (fill in after running)
-- Constraint that stopped it: (fill in)
INSERT INTO farm.farms (farmer_id, municipality_code, farm_name, rural_district,
                        total_area_ha, altitude_masl, registered_at)
VALUES ((SELECT farmer_id FROM farm.farmers WHERE document_number = 'TEST-001'),
        '99001', 'Finca La Prueba', 'Vereda Otra', 3.0, 1500, now());

-- ==================================================
-- 03. BANK TRANSFER PAYMENT WITHOUT transaction_reference
-- ==================================================
-- Needs the chain: collection point > delivery > daily price > settlement.
INSERT INTO buy.collection_points (point_name, municipality_code, address_line)
VALUES ('Test Point', '99001', 'Calle 1 # 2-3');

INSERT INTO buy.deliveries (delivery_id, farm_id, collection_point_id, delivered_at,
                            coffee_type, bag_count, gross_weight_kg, status)
VALUES ('DEL-T001',
        (SELECT farm_id FROM farm.farms WHERE farm_name = 'Finca La Prueba'),
        (SELECT collection_point_id FROM buy.collection_points WHERE point_name = 'Test Point'),
        '2026-10-15 08:00', 'dry_parchment', 10, 625.0, 'received');

INSERT INTO buy.daily_prices (collection_point_id, price_date, price_per_kg, reference_yield_factor)
VALUES ((SELECT collection_point_id FROM buy.collection_points WHERE point_name = 'Test Point'),
        '2026-10-15', 18000, 90);

INSERT INTO pay.settlements (settlement_id, delivery_id, daily_price_id, net_weight_kg,
                             price_per_kg_applied, deductions_amount, settled_at, status)
VALUES ('SET-T001', 'DEL-T001',
        (SELECT daily_price_id FROM buy.daily_prices WHERE price_date = '2026-10-15'
           AND collection_point_id = (SELECT collection_point_id FROM buy.collection_points
                                      WHERE point_name = 'Test Point')),
        600.0, 18000, 0, '2026-10-15 12:00', 'pending');

-- PostgreSQL error: (fill in after running)
-- Constraint that stopped it: (fill in; if no error, write "none")
INSERT INTO pay.payments (payment_id, settlement_id, payment_method, amount, paid_at)
VALUES ('PAY-T001', 'SET-T001', 'bank_transfer', 10800000, '2026-10-15 15:00');

-- ==================================================
-- 04. EXTRA: RULES THAT DO EXIST IN THE SCRIPTS
-- ==================================================
-- 04a. Invalid payment method (expected: chk_payments_method)
-- PostgreSQL error: (fill in)
INSERT INTO pay.payments (payment_id, settlement_id, payment_method, amount, paid_at)
VALUES ('PAY-T002', 'SET-T001', 'bitcoin', 1000, '2026-10-15 15:00');

-- 04b. Invalid gender (expected: chk_farmers_gender)
-- PostgreSQL error: (fill in)
INSERT INTO farm.farmers (document_number, first_name, last_name, birth_date,
                          gender, phone_number, membership_date, municipality_code)
VALUES ('TEST-003', 'Luis', 'Generoinvalido', '1990-01-01', 'X', '3007778899',
        '2024-01-10', '99001');

-- 04c. Municipality that does not exist (expected: fk_farmers_municipalities)
-- PostgreSQL error: (fill in)
INSERT INTO farm.farmers (document_number, first_name, last_name, birth_date,
                          gender, phone_number, membership_date, municipality_code)
VALUES ('TEST-004', 'Eva', 'Sinmunicipio', '1990-01-01', 'F', '3001234567',
        '2024-01-10', '00000');