
-- view used for simplifying of queries
CREATE VIEW DataLogView AS
SELECT * FROM DataLog d JOIN TIME t ON (d.foreign_id = t.time_id)
JOIN Status s ON (d.foreign_id = s.status_id)
JOIN Sim_Card sc ON (d.foreign_id = sc.sim_card_id)
JOIN Device dev ON (d.foreign_id = dev.device_id)