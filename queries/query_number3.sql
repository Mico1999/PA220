-- Marek Miček, 540461
-- Peter Rúček, 540454

--Report on oldest and newest app version for all device models
-- e.g., for “HUAWEI CUN-L21” and not a particular IMSI/car key.


SELECT tab1.device, tab1.program_ver AS oldest_app_ver, tab2.program_ver AS newest_app_ver
FROM 
    ( SELECT device, program_ver, row_number() OVER (PARTITION BY device ORDER BY program_ver ASC) AS oldRn FROM DataLogView)
    tab1 INNER JOIN 
    ( SELECT device, program_ver, row_number() OVER (PARTITION BY device ORDER BY program_ver DESC) AS newRn FROM DataLogView)
    tab2 ON tab1.device = tab2.device
WHERE oldRn = 1 AND newRn = 1;

-- SELECT device, program_ver
-- FROM (
--     SELECt device, program_ver, row_number() OVER (PARTITION BY device ORDER BY program_ver DESC) AS rn
--     FROM DataLogView
-- ) subquery
-- WHERE rn = 1