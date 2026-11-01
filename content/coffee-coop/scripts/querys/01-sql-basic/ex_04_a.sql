-- Excerise 4 - a 
-- 

SELECT 
    municipality_code AS municipality_code,
    municipality_name AS municipality 
FROM 
    geo.municipalities AS T1
WHERE 
    T1.department_code = '54'  
ORDER BY 
    municipality_name ASC;

/* 
 municipality_code |   municipality
-------------------+-------------------
 54003             | Ábrego
 54051             | Arboledas
 54099             | Bochalema
 54109             | Bucarasica
 54128             | Cáchira
 54125             | Cácota
 54172             | Chinácota
 54174             | Chitagá
 54206             | Convención
 54001             | Cúcuta
 54223             | Cucutilla
 54239             | Durania
 54245             | El Carmen
 54250             | El Tarra
 54261             | El Zulia
 54313             | Gramalote
 54344             | Hacarí
 54347             | Herrán
 54385             | La Esperanza
 54398             | La Playa
 54377             | Labateca
 54405             | Los Patios
 54418             | Lourdes
 54480             | Mutiscua
 54498             | Ocaña
 54518             | Pamplona
 54520             | Pamplonita 
 /* 