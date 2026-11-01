-- Exercise 06 - b 
-- Farmers from Pamplona (54518), any gender, without a registered email

SELECT 
    T1.document_number AS document,
    T1.first_name AS first_name,
    T1.last_name AS last_name,
    T1.phone_number AS phone
FROM 
    farm.farmers AS T1
WHERE
    T1.municipality_code = '54518'
    AND T1.email IS NULL; 

/* 
  document  |    first_name    |     last_name      |   phone
------------+------------------+--------------------+------------
 712758473  | Wilson           | López Villamizar   | 3055094275
 727945493  | Gloria           | Marín Rivera       | 3225571567
 549054771  | María            | Burbano Duarte     | 3183590387
 24999630   | Esperanza        | Romero Betancur    | 3029623613
 914044314  | Ancízar Cristian | Polanía Delgado    | 3028825809
 343256743  | Dora             | Hernández Correa   | 3166719225
 1148351420 | Inés             | Jiménez Jaimes     | 3104090231
 1117597835 | Cecilia Lorena   | Díaz García        | 3207660684
 749444168  | Emilio           | Delgado Molina     | 3118015821
 940051048  | David Germán     | Romero Bonilla     | 3018117176
 548464915  | Yuliana          | Rodríguez Vargas   | 3173571208
 554620706  | Nelson Samuel    | Mejía Vera         | 3022063857
 59388780   | Juan             | Ortega Zapata      | 3217129169
 1171130241 | Elsa             | Mejía Vera         | 3019766136
 824422301  | Hernando         | Montoya Agudelo    | 3218003724
 21358854   | Manuela Yolanda  | Benavides Delgado  | 3229418470
 1185523747 | Elsa             | Ibarra Molina      | 3189660702
 131166207  | Jaime            | Marín Hernández    | 3114778905
 35147265   | Carlos           | Gutiérrez Pabón    | 3223406765
 712500733  | Esperanza        | Valencia Ortiz     | 3111830019
 922724022  | Esteban          | Salazar Parra      | 3162718294
 1135293825 | Abelardo         | Pérez Castro       | 3245612074
 939635303  | Marleny          | Álvarez Correa     | 3232410671
 549847293  | Wilmer           | Pérez Chamorro     | 3124455023
 1189704117 | Mariana          | Ortiz Ruiz         | 3004621446
 599185252  | Efraín           | Pinzón Cabrera     | 3216450755
 33787285   | Rubén            | Ramos Chamorro     | 3244273375
-- Más  --
*/