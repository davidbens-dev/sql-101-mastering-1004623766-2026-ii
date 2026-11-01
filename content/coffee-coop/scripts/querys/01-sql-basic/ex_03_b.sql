-- Exercise 03 - b
-- Certifications: name, issuer, premium per kg and premium per load (125 kg)

SELECT
    T1.certification_name AS certification,
    T1.issuing_body AS issuer,
    T1.premium_per_kg AS premium_per_kg_cop,
    T1.premium_per_kg * 125 AS premium_per_load_cop
FROM
    farm.certifications AS T1
ORDER BY
    T1.premium_per_kg DESC;

/*
    certification    |              issuer               | premium_per_kg_cop | premium_per_load_cop
---------------------+-----------------------------------+--------------------+----------------------
 Orgánico            | Ente certificador orgánico        |             800.00 |            100000.00
 Bird Friendly       | Smithsonian Migratory Bird Center |             500.00 |             62500.00
 Fairtrade           | Fairtrade International           |             400.00 |             50000.00
 Nespresso AAA       | Nespresso / Rainforest Alliance   |             350.00 |             43750.00
 Rainforest Alliance | Rainforest Alliance               |             300.00 |             37500.00
 C.A.F.E. Practices  | Starbucks / SCS Global Services   |             250.00 |             31250.00
 4C                  | 4C Services                       |             150.00 |             18750.00
(7 filas)
*/