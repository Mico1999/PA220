-- Marek Miček, 540461
-- Peter Rúček, 540454

-- Identify “connectivity” problems
-- An app instance connecting too often (i.e., next connection in much shorter time than 5 mins), and
-- also, the same for app version and device model.
-- List raw results (particular app instance (sim_imsi)),
-- as well as aggregates by device model (e.g., “HUAWEI CUN-L21”) and by app version.

SELECT sim_imsi, device, program_ver, COUNT(*)
FROM (
    SELECT sim_imsi, device, program_ver, whole, 
    LEAD(whole, 1) 
    OVER(PARTITION BY sim_imsi ORDER BY sim_imsi, whole)
    FROM DataLogView
) inn

WHERE EXTRACT(MINUTE FROM (inn.lead - whole)) < 5 AND
device IS NOT NULL AND -- ?
program_ver IS NOT NULL -- ?
GROUP BY GROUPING SETS((sim_imsi), (device), (program_ver));