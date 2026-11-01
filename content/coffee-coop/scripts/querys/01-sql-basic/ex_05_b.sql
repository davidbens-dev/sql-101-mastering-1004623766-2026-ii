-- Exercise 05 - b
-- Collection points without a registered phone number, sorted by name

SELECT
    T1.point_name AS point,
    T1.address_line AS address,
    T1.municipality_code AS municipality_code
FROM
    buy.collection_points AS T1
WHERE
    T1.phone_number IS NULL
ORDER BY
    T1.point_name ASC;

/*
             point              |        address         | municipality_code
--------------------------------+------------------------+-------------------
 Punto de Compra Aipe 1         | Carrera 13 # 17-16     | 41016
 Punto de Compra Anserma 1      | Calle 39 # 7-96        | 17042
 Punto de Compra Apía 2         | Calle 9 # 14-56        | 66045
 Punto de Compra Baraya 1       | Calle 1 # 19-77        | 41078
 Punto de Compra Bochalema 1    | Carrera 25 # 47-89     | 54099
 Punto de Compra Bosconia 1     | Carrera 26 # 26-43     | 20060
 Punto de Compra Cajibío 1      | Carrera 15 # 32-45     | 19130
 Punto de Compra Cisneros 1     | Calle 37 # 10-5        | 05190
 Punto de Compra Coello 1       | Transversal 20 # 49-66 | 73200
 Punto de Compra El Carmen 2    | Calle 3 # 34-88        | 54245
 Punto de Compra El Tambo 2     | Calle 16 # 56-53       | 19256
 Punto de Compra Flandes 1      | Carrera 38 # 40-79     | 73275
 Punto de Compra Hatonuevo 1    | Calle 7 # 16-89        | 44378
 Punto de Compra Icononzo 1     | Calle 19 # 35-13       | 73352
 Punto de Compra Isnos 1        | Calle 12 # 33-28       | 41359
 Punto de Compra La Argentina 1 | Calle 37 # 58-65       | 41378
 Punto de Compra La Gloria 1    | Transversal 38 # 7-85  | 20383
 Punto de Compra Marsella 1     | Transversal 19 # 42-92 | 66440
 Punto de Compra Pelaya 1       | Avenida 19 # 26-92     | 20550
 Punto de Compra Puracé 1       | Calle 16 # 50-5        | 19585
 Punto de Compra San Lorenzo 1  | Calle 29 # 54-48       | 52687
 Punto de Compra Tesalia 1      | Transversal 15 # 23-61 | 41797
 Punto de Compra Timbiquí 1     | Transversal 34 # 19-91 | 19809
 Punto de Compra Turbo 2        | Calle 36 # 12-19       | 05837
 Punto de Compra Venecia 1      | Avenida 5 # 9-43       | 05861
 Punto de Compra Villa Rica 1   | Diagonal 6 # 8-43      | 19845
(26 filas)
*/