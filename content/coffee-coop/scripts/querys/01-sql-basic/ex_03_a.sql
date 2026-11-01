--- Exercise 3 - a 
--- Certifications: name, issuer and premium per kg, from highest to lowest premium

SELECT 
    T1.certification_name AS certification,
    T1.issuing_body AS issuer,
    T1.premium_per_kg AS premium_per_kg
FROM 
    farm.certifications AS T1
ORDER BY 
    T1.premium_per_kg DESC; 

/*
    certification    |              issuer               | premium_per_kg
---------------------+-----------------------------------+----------------
 Orgánico            | Ente certificador orgánico        |         800.00
 Bird Friendly       | Smithsonian Migratory Bird Center |         500.00
 Fairtrade           | Fairtrade International           |         400.00
 Nespresso AAA       | Nespresso / Rainforest Alliance   |         350.00
 Rainforest Alliance | Rainforest Alliance               |         300.00
 C.A.F.E. Practices  | Starbucks / SCS Global Services   |         250.00
 4C                  | 4C Services                       |         150.00
(7 filas)
*/