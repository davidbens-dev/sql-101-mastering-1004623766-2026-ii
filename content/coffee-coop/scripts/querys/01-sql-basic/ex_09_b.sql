-- Exercise 09 - b 
-- Quality analyses on 2026-09-30 with moisture outside the 10%-12% range

SELECT 
    T1.analysis_id AS analysis, 
    T1.delivery_id AS delivery,
    T1.moisture_pct AS moisture_pct,
    T1.yield_factor AS yield_factor,
    T1.cup_score AS cup_score,
    T1.analyst_name AS analyst_name,
    T1.observations AS observations
FROM 
    buy.quality_analyses AS T1  
WHERE 
    T1.delivery_id LIKE 'DLV-20260930-%'
    AND T1.moisture_pct NOT BETWEEN 10 AND 12
ORDER BY
    T1.moisture_pct DESC;

/* 
      analysis      |      delivery       | moisture_pct | yield_factor | cup_score |    analyst_name    |                          observations
--------------------+---------------------+--------------+--------------+-----------+--------------------+-----------------------------------------------------------------
 QA-20260930-000104 | DLV-20260930-000214 |        17.68 |        97.46 |     82.59 | Carolina Rodríguez | Olor a fermento en la muestra.
 QA-20260930-000018 | DLV-20260930-000006 |        17.24 |       103.31 |     79.98 | Nicolás Serrano    | Café con humedad alta, requiere más secado.
 QA-20260930-000068 | DLV-20260930-000165 |        16.13 |       100.22 |           | Germán Peña        | Muestra tomada por duplicado.
 QA-20260930-000025 | DLV-20260930-000083 |        16.00 |       102.88 |           | Germán Peña        |
 QA-20260930-000069 | DLV-20260930-000109 |        15.30 |        99.98 |     83.85 | Efraín Betancur    |
 QA-20260930-000086 | DLV-20260930-000147 |        15.20 |        96.57 |           | Erika Restrepo     | Olor a fermento en la muestra.
 QA-20260930-000022 | DLV-20260930-000070 |        12.95 |       103.55 |           | Santiago Rojas     | Café con humedad alta, requiere más secado.
 QA-20260930-000134 | DLV-20260930-000236 |        12.48 |        89.55 |           | Gloria Restrepo    |
 QA-20260930-000094 | DLV-20260930-000227 |        12.43 |        96.11 |           | Ruth Polanía       |
 QA-20260930-000033 | DLV-20260930-000027 |        12.41 |        92.76 |           | Sara Sánchez       |
 QA-20260930-000056 | DLV-20260930-000120 |        12.40 |        93.55 |           | Alejandra Torres   |
 QA-20260930-000092 | DLV-20260930-000113 |        12.39 |        90.14 |     83.16 | Wilson Galvis      |
 QA-20260930-000121 | DLV-20260930-000200 |        12.38 |        90.67 |     81.34 | Guillermo Acevedo  |
 QA-20260930-000082 | DLV-20260930-000111 |        12.38 |        94.29 |     87.18 | Sara Sánchez       |
 QA-20260930-000137 | DLV-20260930-000295 |        12.35 |        91.07 |     87.14 | Sara Sánchez       |
 QA-20260930-000095 | DLV-20260930-000118 |        12.32 |        92.00 |     80.52 | Laura Henao        |
 QA-20260930-000035 | DLV-20260930-000115 |        12.31 |        90.58 |           | Santiago Rojas     | Muestra tomada por duplicado.
 QA-20260930-000102 | DLV-20260930-000155 |        12.31 |        94.01 |     87.28 | Adriana Losada     |
 QA-20260930-000052 | DLV-20260930-000149 |        12.31 |        91.85 |           | Efraín Betancur    | Grano uniform-- Más  --

 */