-- Exercise 06 - a
-- Farmers: document, first name, last name and phone of female members from Pamplona (54518)

SELECT
    T1.document_number AS document,
    T1.first_name AS first_name,
    T1.last_name AS last_name,
    T1.phone_number AS phone
FROM
    farm.farmers AS T1
WHERE
    T1.municipality_code = '54518'
    AND T1.gender = 'F'
ORDER BY
    T1.last_name ASC,
    T1.first_name ASC;
    
/* 
  document  |    first_name     |     last_name     |   phone
------------+-------------------+-------------------+------------
 768461420  | Marleny           | Agudelo Sandoval  | 3242280898
 931079279  | Edilma            | Álvarez Bonilla   | 3236902029
 463842401  | Rocío             | Álvarez Cárdenas  | 3047898372
 788628125  | Mónica            | Álvarez Carrillo  | 3059237130
 939635303  | Marleny           | Álvarez Correa    | 3232410671
 1089620113 | Myriam Yuliana    | Arango Narváez    | 3178267449
 172555225  | Edilma Gabriela   | Arias Álvarez     | 3213658326
 550696749  | Viviana           | Arias Ramírez     | 3204850778
 797017145  | Isabella          | Barrera Cabrera   | 3041744702
 659942505  | Mariana           | Barrera Correa    | 3126485460
 1103932523 | Amparo            | Bastidas Chamorro | 3023807439
 1027436085 | Manuela           | Bastidas Medina   | 3508652479
 649244180  | Rocío             | Bastidas Suárez   | 3015208796
 21358854   | Manuela Yolanda   | Benavides Delgado | 3229418470
 737383707  | Yesenia           | Bermúdez Henao    | 3141005257
 549054771  | María             | Burbano Duarte    | 3183590387
 436957556  | Jazmín            | Burbano Jaimes    | 3202058604
 918053770  | Nubia Juliana     | Caicedo Medina    | 3183905612
 356207226  | Luisa             | Caicedo Restrepo  | 3232775188
 358946393  | Carmen            | Cárdenas Moreno   | 3149324862
 756369749  | Andrea            | Cardona Ruiz      | 3007467744
 65169775   | Aura              | Castillo Henao    | 3136723568
 1001030458 | Liliana Luisa     | Chamorro Vélez    | 3002682380
 977130251  | Inés Lucía        | Díaz Cuéllar      | 3507141858
 1117597835 | Cecilia Lorena    | Díaz García       | 3207660684
 828628976  | Diana             | Díaz Medina       | 3023178503
 932437698  | Amparo            | Duarte Duque      | 3059102841
-- Más  --
*/