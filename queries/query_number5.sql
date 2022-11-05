-- Marek Miček, 540461
-- Peter Rúček, 540454

-- Identify “connectivity” problems
-- An app instance connecting too often (i.e., next connection in much shorter time than 5 mins), and
-- also, the same for app version and device model.
-- List raw results (particular app instance (sim_imsi)),
-- as well as aggregates by device model (e.g., “HUAWEI CUN-L21”) and by app version.

SELECT sim_imsi, device, program_ver, count(sim_imsi) AS Connection_Count
FROM DataLogView
GROUP BY GROUPING SETS((sim_imsi), (device), (program_ver))
ORDER BY Connection_Count DESC;