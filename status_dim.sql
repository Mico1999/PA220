-- Marek Miček, 540461
-- Peter Rúček, 540454

DROP TABLE IF EXISTS Status;

CREATE TABLE Status (
   status_id BIGSERIAL PRIMARY KEY,
   car_key bigint, 
   "time" timestamp with time zone,
   app_run_time numeric(6,2),
   pda_run_time numeric(10,2),
   tracking_mode text,
   battery_level text 
);

INSERT INTO Status(car_key, "time", app_run_time, pda_run_time, tracking_mode, battery_level)
SELECT car_key, "time", app_run_time, pda_run_time, tracking_mode, battery_level
FROM pa220_data;

SELECT * FROM Status FETCH FIRST 100 ROWS ONLY;