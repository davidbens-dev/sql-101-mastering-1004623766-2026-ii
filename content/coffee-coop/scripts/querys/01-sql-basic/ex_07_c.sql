-- Exercise 07 - c 
-- Farms in Pamplona (54518) without registered coordinates (null latitude or longitude)

SELECT 
    T1.farm_name AS farm,
    T1.rural_district AS rural_district,
    T1.latitude AS latitude,
    T1.longitude As longitude
FROM 
    farm.farms AS T1 
WHERE 
    T1.municipality_code = '54518' 
    AND (T1.latitude IS NULL OR T1.longitude IS NULL); 

/* 
       farm       |    rural_district    | latitude | longitude
------------------+----------------------+----------+-----------
 El Recuerdo      | Alto Grande          |          |
 La Esperanza     | El Palchal           |          |
 Las Delicias     | Caima                |          |
 Los Arrayanes    | Cabecera Municipal   |          |
 El Brillante     | Peñas                |          |
 El Porvenir      | Fontibón             |          |
 La Florida       | Peñas                |          |
 Los Arrayanes    | Navarro              |          |
 El Guayabo       | San Francisco        |          |
 El Encanto       | Fontibón             |          |
 Cafetal Viejo    | San José De Tonchala |          |
 El Vergel        | Cabecera Municipal   |          |
 El Higuerón      | Caima                |          |
 Bella Vista Alta | El Rosal             |          |
 El Horizonte     | San José De Tonchala |          |
 La Esperanza     | Peñas                |          |
 El Mesón         | Iscaligua            |          |
 Las Mercedes     | Llano Castro         |          |
 Las Orquídeas    | Sabaneta Baja        |          |
 La Unión         | La Legua             |          |
 San Antonio      | Jurado               |          |
 San Luis         | Sabaneta Alta        |          |
 El Danubio       | García               |          |
 Tierra Linda     | Lengua               |          |
 Tierra Linda     | Iscaligua            |          |
 Los Laureles     | Peñas                |          |
 Bella Vista Alta | Sabaneta Baja        |          |
 La Argentina     | Peñas                |          |
 El Triunfo       | Cabecera Municipal   |          |
 La Holanda       | Cabecera Municipal   |          |
 Los Naranjos     | El Rosal             |          |
 La Floresta      | Alcaparral           |          |
 El Guamo         | Fontibón             |          |
 La Reserva       | García               |          |
 El Nogal         | El Totumo            |          |
 La Loma          | Sabagua              |          |
 El Encanto       | San José De Tonchala |          |
 El Mirador       | Fontibón             |          |
 La Siberia       | Sabaneta Baja        |          |
-- Más  --
/* 
