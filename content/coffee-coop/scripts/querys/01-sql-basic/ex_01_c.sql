-- Exercise 1 -c
-- Departments: code and name with column aliases, sorted alphabetically by name

SELECT
    T1.department_code AS code,
    T1.department_name AS department
FROM geo.departments AS T1
ORDER BY
    T1.department_name ASC;

/*
 code |                        department
------+----------------------------------------------------------
 91   | Amazonas
 05   | Antioquia
 81   | Arauca
 88   | Archipiélago De San Andrés, Providencia Y Santa Catalina
 08   | Atlántico
 11   | Bogotá, D.C.
 13   | Bolívar
 15   | Boyacá
 17   | Caldas
 18   | Caquetá
 85   | Casanare
 19   | Cauca
 20   | Cesar
 27   | Chocó
 23   | Córdoba
 25   | Cundinamarca
 94   | Guainía
 95   | Guaviare
 41   | Huila
 44   | La Guajira
 47   | Magdalena
 50   | Meta
 52   | Nariño
 54   | Norte De Santander
 86   | Putumayo
 63   | Quindio
 66   | Risaralda
 68   | Santander
 */