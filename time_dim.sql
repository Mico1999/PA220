-- Marek Miček, 540461
-- Peter Rúček, 540454

DROP TABLE IF EXISTS Time;

CREATE TABLE Time(
    time_id BIGSERIAL PRIMARY KEY,
    whole timestamp with time zone,
    year numeric,
    month numeric,
    day numeric,
    hour numeric,
    minute numeric,
    second numeric,
    timezone numeric
);

INSERT INTO Time(whole, year, month, day, hour, minute, second, timezone)
SELECT 
time_conn,
EXTRACT(YEAR FROM time_conn) as year,
EXTRACT(MONTH FROM time_conn) as month,
EXTRACT(DAY FROM time_conn) as day,
EXTRACT(HOUR FROM time_conn) as hour,
EXTRACT(MINUTE FROM time_conn) as minute,
EXTRACT(SECOND FROM time_conn) as second,
EXTRACT(TIMEZONE FROM time_conn) as timezone
FROM public.pa220_data; 

SELECT * FROM Time FETCH FIRST 100 ROWS ONLY;