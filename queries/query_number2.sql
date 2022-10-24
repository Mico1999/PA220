-- Marek Miček, 540461
-- Peter Rúček, 540454

-- List connection counts in individual operator networks per day of the week and month.
-- i.e., see the trends of connections per day in week for each month separately
-- Print also the country name of the operator (extend the dimension), sort descendingly by connection counts.


-- view used for simplifying of queries
CREATE VIEW QueryTwo AS
SELECT * FROM DataLog d JOIN Time t ON (d.foreign_id = t.time_id)
JOIN SimCardWithNetworkView s ON (d.foreign_id = s.sim_card_id);


SELECT gsmnet_id, month, EXTRACT(DOW FROM whole) as day_of_week, count(*) as connection_counts, country
FROM QueryTwo 
GROUP BY gsmnet_id, country, ROLLUP(month, day_of_week)
ORDER BY connection_counts DESC, gsmnet_id DESC, month DESC, day_of_week DESC;

DROP VIEW IF EXISTS QueryTwo;