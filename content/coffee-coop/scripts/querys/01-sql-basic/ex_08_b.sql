-- Exercise 08 - b 
-- Rejected deliveries received on 2026-09-30, with average kg per bag

SELECT 
    T1.delivery_id AS delivery, 
    T1.farm_id AS farm_id, 
    T1.collection_point_id AS collection_point_id,
    T1.delivered_at AS received_at,
    T1.coffee_type AS coffee_type,
    T1.gross_weight_kg AS gross_weight_kg,
    T1.gross_weight_kg / T1.bag_count AS avg_kg_per_bag
FROM
    buy.deliveries AS T1    
WHERE 
    T1.delivery_id LIKE 'DLV-20260930-%'
    AND T1.status = 'rejected'
ORDER BY 
    T1.delivered_at ASC;

/*
      delivery       | farm_id | collection_point_id |     received_at     |  coffee_type  | gross_weight_kg |   avg_kg_per_bag
---------------------+---------+---------------------+---------------------+---------------+-----------------+---------------------
 DLV-20260930-000006 |   58408 |                 170 | 2026-09-30 06:11:03 | dry_parchment |          139.81 | 46.6033333333333333
 DLV-20260930-000070 |   69157 |                   3 | 2026-09-30 08:19:57 | dry_parchment |          147.13 | 49.0433333333333333
 DLV-20260930-000083 |   66435 |                   2 | 2026-09-30 09:20:30 | dry_parchment |           89.95 | 44.9750000000000000
 DLV-20260930-000109 |  216626 |                   6 | 2026-09-30 10:04:15 | dry_parchment |          311.88 | 62.3760000000000000
 DLV-20260930-000147 |   77310 |                 103 | 2026-09-30 11:17:45 | wet_parchment |           66.42 | 66.4200000000000000
 DLV-20260930-000165 |  107038 |                 162 | 2026-09-30 12:15:01 | dry_parchment |          348.59 | 58.0983333333333333
 DLV-20260930-000214 |  223116 |                  44 | 2026-09-30 13:53:56 | dry_parchment |          177.63 | 59.2100000000000000
 DLV-20260930-000223 |  216415 |                  45 | 2026-09-30 14:19:21 | dry_parchment |          338.32 | 48.3314285714285714
 DLV-20260930-000253 |  143807 |                 102 | 2026-09-30 15:05:34 | dry_parchment |          253.15 | 50.6300000000000000
(9 filas)
*/ 

