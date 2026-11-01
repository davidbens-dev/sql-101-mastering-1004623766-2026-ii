-- Exercise 2 - a 
-- Coffee varieties: name, species and description of rust-resistant varieties

-- Exercise 02 - a
-- Coffee varieties: name, species and description of rust-resistant varieties

SELECT
    T1.variety_name AS variety,
    T1.species AS species,
    T1.description AS description
FROM 
    farm.coffee_varieties AS T1
WHERE 
    T1.is_rust_resistant = TRUE;

/*
  variety   | species |                             description
------------+---------+---------------------------------------------------------------------
 Castillo   | arabica | Variedad colombiana resistente a la roya, la más sembrada del país.
 Colombia   | arabica | Variedad compuesta resistente a la roya, antecesora de Castillo.
 Cenicafé 1 | arabica | Variedad de porte bajo con resistencia a la roya.
 Tabi       | arabica | Variedad de porte alto resistente a la roya.
 Robusta    | robusta | Especie Coffea canephora, de mayor contenido de cafeína.
(5 filas)
*/