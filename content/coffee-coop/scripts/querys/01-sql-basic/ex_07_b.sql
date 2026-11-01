-- Exercise 07 - b 

SELECT 
    T1.farm_name AS farm,
    T1.rural_district AS rural_district,
    T1.total_area_ha AS area_ha, 
    T1.altitude_masl AS altitude_masl
FROM 
    farm.farms AS T1
WHERE 
    T1.municipality_code = '54518' 
    AND T1.altitude_masl BETWEEN 1600 AND 1800 
ORDER BY 
    T1.rural_district ASC, 
    T1.total_area_ha DESC;

/* 
       farm       |    rural_district    | area_ha | altitude_masl
------------------+----------------------+---------+---------------
 Los Pinos        | Alcaparral           |    1.67 |          1771
 Miraflores       | Alcaparral           |    1.29 |          1636
 Monteverde       | Alto Grande          |    2.59 |          1794
 La Loma          | Alto Grande          |    2.09 |          1667
 Bellavista       | Alto Grande          |    1.80 |          1704
 El Refugio       | Alto Grande          |    1.23 |          1661
 El Jardín        | Cabecera Municipal   |    3.26 |          1620
 El Edén          | Cabecera Municipal   |    2.89 |          1603
 La Milagrosa     | Cabecera Municipal   |    2.65 |          1643
 La Divisa        | Cabecera Municipal   |    1.32 |          1765
 El Recuerdo      | Caima                |    3.12 |          1758
 El Recreo        | Caima                |    1.33 |          1617
 La Victoria      | Cunuba               |    1.79 |          1780
 La Isabela       | Cunuba               |    1.74 |          1663
 La Palma         | Cunuba               |    1.60 |          1773
 La Gaitana       | Cunuba               |    1.12 |          1659
 El Oasis         | El Alizal            |    2.52 |          1692
 La Argentina     | El Escorial          |    4.41 |          1765
 El Horizonte     | El Escorial          |    1.68 |          1730
 El Recuerdo      | El Escorial          |    1.27 |          1619
 El Triunfo       | El Escorial          |    0.75 |          1715
 La Palma         | El Escorial          |    0.72 |          1636
 Tierra Linda     | El Palchal           |    3.15 |          1629
 La Aurora        | El Palchal           |    2.74 |          1684
 Las Margaritas   | El Palchal           |    0.70 |          1686
 Las Palmas       | El Rosal             |    3.67 |          1750
 Bella Vista Alta | El Rosal             |    1.03 |          1652
-- Más  --
*/ 
