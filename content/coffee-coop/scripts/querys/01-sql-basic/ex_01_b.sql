 -- Exercise 1 -b
 -- Departments: code and name with column aliases

SELECT
    T1.department_code AS code,
    T1.department_name AS department
FROM geo.departments AS T1;

/*
 code |                        department
------+----------------------------------------------------------
 05   | Antioquia
 08   | Atlántico
 11   | Bogotá, D.C.
 13   | Bolívar
 15   | Boyacá
 17   | Caldas
 18   | Caquetá
 19   | Cauca
 20   | Cesar
 23   | Córdoba
 25   | Cundinamarca
 27   | Chocó
 41   | Huila
 44   | La Guajira
 47   | Magdalena
 50   | Meta
 52   | Nariño
 54   | Norte De Santander
 63   | Quindio
 66   | Risaralda
 68   | Santander
 70   | Sucre
 73   | Tolima
 76   | Valle Del Cauca
 81   | Arauca
 85   | Casanare
 86   | Putumayo
-- Más  --
*/ 