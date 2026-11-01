-- Exercise 09 - c 
-- Quality analyses on 2026-09-30 not accepted that have observations, highest defects first

SELECT 
    T1.analysis_id AS analysis, 
    T1.delivery_id AS delivery,
    T1.moisture_pct AS moisture_pct,
    T1.yield_factor AS yield_factor,
    T1.cup_score AS cup_score,
    T1.defects_pct AS defects_pct,
    T1.observations AS observations
FROM 
    buy.quality_analyses AS T1
WHERE
    T1.delivery_id LIKE 'DLV-20260930-%'
    AND T1.is_accepted = FALSE 
    AND T1.observations IS NOT NULL
ORDER BY
    T1.defects_pct DESC;

/* 
      analysis      |      delivery       | moisture_pct | yield_factor | cup_score | defects_pct |                observations
--------------------+---------------------+--------------+--------------+-----------+-------------+---------------------------------------------
 QA-20260930-000104 | DLV-20260930-000214 |        17.68 |        97.46 |     82.59 |       19.54 | Olor a fermento en la muestra.
 QA-20260930-000068 | DLV-20260930-000165 |        16.13 |       100.22 |           |       17.29 | Muestra tomada por duplicado.
 QA-20260930-000119 | DLV-20260930-000253 |         8.39 |       106.52 |     84.33 |       15.59 | Exceso de impurezas y pasilla.
 QA-20260930-000086 | DLV-20260930-000147 |        15.20 |        96.57 |           |       13.21 | Olor a fermento en la muestra.
 QA-20260930-000113 | DLV-20260930-000223 |         9.57 |        99.70 |     85.05 |       12.94 | Café sobresecado, grano quebradizo.
 QA-20260930-000022 | DLV-20260930-000070 |        12.95 |       103.55 |           |        9.75 | Café con humedad alta, requiere más secado.
 QA-20260930-000018 | DLV-20260930-000006 |        17.24 |       103.31 |     79.98 |        7.88 | Café con humedad alta, requiere más secado.
(7 filas)
*/ 