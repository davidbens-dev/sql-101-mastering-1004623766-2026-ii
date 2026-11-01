-- Exercise 09 - a  
-- Quality analyses on 2026-09-30 with cup score >= 85, best score first

SELECT 
    T1.analysis_id AS analysis, 
    T1.delivery_id AS delivery,
    T1.moisture_pct AS moisture_pct,
    T1.yield_factor AS yield_factor,
    T1.cup_score AS cup_score 
FROM 
    buy.quality_analyses AS T1 
WHERE
    T1.delivery_id LIKE 'DLV-20260930-%'
    AND T1.cup_score >= 85
ORDER BY
    T1.cup_score DESC;

/*
      analysis      |      delivery       | moisture_pct | yield_factor | cup_score
--------------------+---------------------+--------------+--------------+-----------
 QA-20260930-000102 | DLV-20260930-000155 |        12.31 |        94.01 |     87.28
 QA-20260930-000082 | DLV-20260930-000111 |        12.38 |        94.29 |     87.18
 QA-20260930-000137 | DLV-20260930-000295 |        12.35 |        91.07 |     87.14
 QA-20260930-000116 | DLV-20260930-000208 |        11.07 |        93.78 |     87.07
 QA-20260930-000118 | DLV-20260930-000256 |        11.16 |        92.54 |     87.04
 QA-20260930-000030 | DLV-20260930-000089 |        10.70 |        91.53 |     86.31
 QA-20260930-000089 | DLV-20260930-000203 |        11.84 |        91.41 |     86.01
 QA-20260930-000028 | DLV-20260930-000064 |        11.48 |        94.23 |     85.62
 QA-20260930-000110 | DLV-20260930-000182 |        10.64 |        88.18 |     85.25
 QA-20260930-000079 | DLV-20260930-000085 |        11.55 |        93.28 |     85.15
 QA-20260930-000113 | DLV-20260930-000223 |         9.57 |        99.70 |     85.05
(11 filas)
*/ 
 