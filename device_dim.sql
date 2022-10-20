-- Marek Miček, 540461
-- Peter Rúček, 540454

-- ADD DEVICE NAME TO TABLE
-- SELECT *
-- FROM ( SELECT sim_imsi, program_ver 
-- FROM public.pa220_data) t1 
-- LEFT JOIN ( SELECT distinct sim_imsi, device, program_ver 
-- FROM public.pa220_data
-- WHERE device IS NOT NULL) t2 
-- ON (t1.sim_imsi = t2.sim_imsi and t1.program_ver = t2.program_ver);

DROP TABLE IF EXISTS Device;

CREATE TABLE Device(
    device_id BIGSERIAL PRIMARY KEY,
    device text,
    program_ver character varying(6)
);

INSERT INTO Device(device, program_ver)
SELECT device, program_ver 
FROM public.pa220_data
ORDER BY device, program_ver;

SELECT * FROM Device
FETCH FIRST 100 ROWS ONLY;