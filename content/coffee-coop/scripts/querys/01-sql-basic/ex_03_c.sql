-- Exercise 03 - c
-- Certifications: premium per kg and per load for certifications with premium >= 350 COP

SELECT
    T1.certification_name AS certification,
    T1.issuing_body AS issuer,
    T1.premium_per_kg AS premium_per_kg_cop,
    T1.premium_per_kg * 125 AS premium_per_load_cop
FROM
    farm.certifications AS T1
WHERE
    T1.premium_per_kg >= 350
ORDER BY
    T1.premium_per_kg DESC;

/*
 certification |              issuer               | premium_per_kg_cop | premium_per_load_cop
---------------+-----------------------------------+--------------------+----------------------
 Orgánico      | Ente certificador orgánico        |             800.00 |            100000.00
 Bird Friendly | Smithsonian Migratory Bird Center |             500.00 |             62500.00
 Fairtrade     | Fairtrade International           |             400.00 |             50000.00
 Nespresso AAA | Nespresso / Rainforest Alliance   |             350.00 |             43750.00
(4 filas)
*/
