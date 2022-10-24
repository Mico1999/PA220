DROP VIEW IF EXISTS DataLogView;
DROP VIEW IF EXISTS SimCardWithNetworkView;

-- view used for simplifying of queries

CREATE VIEW SimCardWithNetworkView AS
SELECT * FROM SimCard
JOIN MccMncCountry on ( LEFT(gsmnet_id, 3) like concat('%',mcc,'%') AND RIGHT(gsmnet_id, 3) like concat('%',mnc,'%') );

CREATE VIEW DataLogView AS
SELECT * FROM DataLog d JOIN TIME t ON (d.foreign_id = t.time_id)
JOIN Status s ON (d.foreign_id = s.status_id)
JOIN SimCardWithNetworkView sc ON (d.foreign_id = sc.sim_card_id)
JOIN Device dev ON (d.foreign_id = dev.device_id);
SELECT * FROM DataLogView FETCH FIRST 100 ROWS ONLY;