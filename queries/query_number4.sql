-- Marek Miček, 540461
-- Peter Rúček, 540454

-- Report on the reliability of device models – number of app restarts without device restart (aka app crashes).
-- List top-10 for the combination of app version and device model

SELECT device, program_ver, COUNT(*)
FROM (
    SELECT device, program_ver, app_run_time, 
    LEAD(app_run_time, 1,0) 
    OVER(PARTITION BY sim_imsi ORDER BY sim_imsi, whole)
    FROM DataLogView
    WHERE app_run_time IS NOT NULL
) inn

WHERE inn.lead < app_run_time AND
device IS NOT NULL AND -- ?
program_ver IS NOT NULL -- ?
GROUP BY device, program_ver --ROLLUP(device, program_ver)
ORDER BY COUNT DESC
FETCH FIRST 10 ROWS ONLY;