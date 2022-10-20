-- Marek Miček, 540461
-- Peter Rúček, 540454

-- List connection counts per app version and day during Oct 2020. 
-- Print also totals per day, per app and grand total. 
-- Sort the result by day and app both descending.

SELECT program_ver, year, month, day, count(sim_imsi)
FROM DataLogView 
WHERE year = 2020 AND month = 10
GROUP BY year, month, ROLLUP(program_ver, day)
ORDER BY day DESC, program_ver DESC;