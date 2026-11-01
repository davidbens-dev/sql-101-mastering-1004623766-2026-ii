-- Exercise 05 - a
-- Collection points: name, address and municipality code of inactive points

SELECT
    T1.point_name AS point,
    T1.address_line AS address,
    T1.municipality_code AS municipality_code
FROM
    buy.collection_points AS T1
WHERE
    T1.is_active = FALSE;

/* 
           point            |      address       | municipality_code
----------------------------+--------------------+-------------------
 Punto de Compra El Banco 1 | Calle 17 # 34-54   | 47245
 Punto de Compra Popayán 1  | Carrera 21 # 4-95  | 19001
 Punto de Compra Apía 2     | Calle 9 # 14-56    | 66045
 Punto de Compra Tello 1    | Calle 8 # 13-23    | 41799
 Punto de Compra Turbo 1    | Avenida 32 # 34-61 | 05837
 Punto de Compra Paicol 2   | Calle 2 # 30-84    | 41518
 Punto de Compra Rionegro 1 | Carrera 31 # 59-80 | 68615
 Punto de Compra Ulloa 1    | Calle 15 # 3-50    | 76845
 Punto de Compra Nátaga 1   | Diagonal 30 # 7-59 | 41483
(9 filas)
*/ 



