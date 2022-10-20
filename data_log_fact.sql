-- Marek Miček, 540461
-- Peter Rúček, 540454

DROP TABLE IF EXISTS DataLog;

CREATE TABLE DataLog(
    foreign_id BIGSERIAL PRIMARY KEY,
    log_key bigint
);

INSERT INTO DataLog(log_key)
SELECT log_key
FROM public.pa220_data;

SELECT * FROM DataLog FETCH FIRST 100 ROWS ONLY;