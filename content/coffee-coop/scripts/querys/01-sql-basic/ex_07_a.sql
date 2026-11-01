--Exercise 07 - a 
--Farms in Pamplona (54518) above 1800 masl, sorted by altitude from highest to lowest 

SELECT 
    T1.farm_name AS farm,
    T1.rural_district AS rural_district,
    T1.total_area_ha AS area_ha, 
    T1.altitude_masl AS altitude_masl
FROM 
    farm.farms AS T1
WHERE 
    T1.municipality_code = '54518' 
    AND T1.altitude_masl > 1800 
ORDER BY
        T1.altitude_masl DESC;

/* 
      farm      |    rural_district    | area_ha | altitude_masl
----------------+----------------------+---------+---------------
 Santa Clara    | La Legua             |    2.62 |          2300
 El Guayabo     | El Rosal             |    1.21 |          2300
 La Cascada     | Caima                |    2.49 |          2300
 El Vergel      | Sabagua              |    1.11 |          2300
 La Isabela     | García               |    1.36 |          2275
 El Refugio     | Monteadentro         |    4.89 |          2242
 Cafetal Viejo  | Caima                |    5.29 |          2229
 San José       | Alcaparral           |    3.12 |          2203
 El Refugio     | Sabaneta Baja        |    1.93 |          2195
 Villa Hermosa  | Peñas                |    0.30 |          2181
 El Nogal       | San José De Tonchala |    3.24 |          2177
 El Paraíso     | Navarro              |    1.67 |          2164
 El Danubio     | García               |    7.83 |          2160
 Las Orquídeas  | Sabaneta Baja        |    0.78 |          2152
 Los Laureles   | San José De Tonchala |    0.84 |          2148
 La Granja      | El Palchal           |    2.83 |          2140
 Los Guaduales  | El Palchal           |    2.66 |          2135
 La Argentina   | Lengua               |    1.45 |          2124
 El Mesón       | Navarro              |    1.40 |          2122
 Las Acacias    | Cunuba               |    0.94 |          2121
 Cafetal Viejo  | La Legua             |    0.42 |          2109
 Villa Rosa     | El Alizal            |    1.81 |          2108
 Bellavista     | Cunuba               |    7.72 |          2107
 La Estrella    | García               |    5.51 |          2079
 El Guamo       | El Escorial          |    4.27 |          2074
 Las Margaritas | Caima                |    0.91 |          2072
 San Rafael     | San José De Tonchala |    1.02 |          2065
-- Más  --
*/ 

-- Para esta consulta se uso chcp 65001 y dentro de psql, se confirma la codificación:\encoding UTF8