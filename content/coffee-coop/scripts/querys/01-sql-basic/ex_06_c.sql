-- Exercise 06 - c 
-- Farmers from Pamplona (54518) with inactive membership, oldest affiliation first

SELECT 
    T1.document_number AS document,
    T1.first_name AS first_name,
    T1.last_name AS last_name,
    T1.phone_number AS phone,
    T1.membership_date AS membership_date
FROM 
    farm.farmers AS T1
WHERE
    T1.municipality_code = '54518'
    AND T1.is_active = FALSE
ORDER BY 
    T1.membership_date ASC; 

/*
  document  |    first_name    |     last_name      |   phone    | membership_date
------------+------------------+--------------------+------------+-----------------
 230971064  | Manuel           | Agudelo Jiménez    | 3219718862 | 1997-03-29
 534023693  | Myriam           | Valencia Moreno    | 3241389451 | 1998-11-03
 33787285   | Rubén            | Ramos Chamorro     | 3244273375 | 1999-03-02
 1135293825 | Abelardo         | Pérez Castro       | 3245612074 | 2003-06-19
 478755763  | Nicolás          | Rivera Duque       | 3029310183 | 2003-08-11
 160538872  | Liliana          | Mosquera Uribe     | 3119365364 | 2007-09-27
 223974138  | Rodrigo Nelson   | Cabrera Villamizar | 3502554241 | 2009-05-02
 10424994   | Cristian         | Herrera Zuluaga    | 3242295228 | 2010-04-28
 1015411133 | Santiago         | Bermúdez Ruiz      | 3003993000 | 2010-11-30
 1090968710 | Ruth             | Rodríguez Pérez    | 3021808053 | 2010-12-11
 974842644  | Arturo           | Hernández Uribe    | 3058169707 | 2012-06-16
 1001030458 | Liliana Luisa    | Chamorro Vélez     | 3002682380 | 2013-01-09
 870240973  | Jairo            | Molina Pabón       | 3018237329 | 2014-03-13
 89157555   | Heriberto        | Jiménez Cáceres    | 3164266457 | 2014-07-17
 333176982  | Edilma           | Rivera Rivera      | 3126087263 | 2014-12-20
 587550249  | Gustavo          | Mosquera López     | 3119000149 | 2016-05-14
 718906996  | Nelson           | Bedoya Vélez       | 3194564518 | 2016-12-09
 1117597835 | Cecilia Lorena   | Díaz García        | 3207660684 | 2017-01-11
 599185252  | Efraín           | Pinzón Cabrera     | 3216450755 | 2017-07-23
 135734682  | Diego            | Rivera Jiménez     | 3508307641 | 2018-03-26
 914044314  | Ancízar Cristian | Polanía Delgado    | 3028825809 | 2021-02-24
(21 filas)
*/ 
