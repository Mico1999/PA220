-- SELECT COUNT(*) FROM (SELECT DISTINCT sim_imsi FROM pa220_data) distinct_sim_imsi; 99

-- SELECT COUNT(*) FROM (SELECT DISTINCT device FROM pa220_data) distinct_device; 33

-- SELECT COUNT(*) FROM (SELECT DISTINCT gsmnet_id FROM pa220_data) distinct_gsm; 82

-- SELECT COUNT(*) FROM (SELECT DISTINCT program_ver FROM pa220_data) distinct_program_ver; 19

-- SELECT COUNT(*) FROM (SELECT DISTINCT car_key FROM pa220_data) distinct_car_key; 71

-- SELECT COUNT(*) FROM (SELECT DISTINCT service_key FROM pa220_data) distinct_ser_key; 1 058 468

-- SELECT COUNT(*) FROM (SELECT DISTINCT log_key FROM pa220_data) distinct_log_key; 6 692 915

-- SELECT COUNT(*) FROM pa220_data WHERE (gsmnet_id IS NULL) ; 6

-- SELECT COUNT(*) FROM pa220_data WHERE (gsmnet_id LIKE '') ; 41431

-- SELECT EXTRACT(MONTH FROM time_conn) as month, EXTRACT(YEAR FROM time_conn) as year 
-- FROM pa220_data GROUP BY year, month
-- ORDER BY year DESC, month DESC;  2022 - 01

-- SELECT COUNT(*) FROM 
-- (SELECT DISTINCT sim_imsi FROM pa220_data
--     WHERE (EXTRACT(MONTH FROM time_conn) = '1' AND 
--     EXTRACT(YEAR FROM time_conn) = '2022')
-- ) distinct_sim_imsi; 18

-- SELECT COUNT(*) FROM 
-- (SELECT DISTINCT device FROM pa220_data
--     WHERE (EXTRACT(MONTH FROM time_conn) = '1' AND 
--     EXTRACT(YEAR FROM time_conn) = '2022')
-- ) distinct_device; 4

-- SELECT COUNT(*) FROM 
-- (SELECT DISTINCT gsmnet_id FROM pa220_data
--     WHERE (EXTRACT(MONTH FROM time_conn) = '1' AND 
--     EXTRACT(YEAR FROM time_conn) = '2022')
-- ) distinct_gsm; 4

-- SELECT COUNT(*) FROM 
-- (SELECT DISTINCT program_ver FROM pa220_data
--     WHERE (EXTRACT(MONTH FROM time_conn) = '1' AND 
--     EXTRACT(YEAR FROM time_conn) = '2022')
-- ) distinct_program_ver; 4

-- SELECT COUNT(*) FROM 
-- (SELECT DISTINCT car_key FROM pa220_data
--     WHERE (EXTRACT(MONTH FROM time_conn) = '1' AND 
--     EXTRACT(YEAR FROM time_conn) = '2022')
-- ) distinct_car_key; 5

-- SELECT COUNT(*) FROM 
-- (SELECT DISTINCT service_key FROM pa220_data
--     WHERE (EXTRACT(MONTH FROM time_conn) = '1' AND 
--     EXTRACT(YEAR FROM time_conn) = '2022')
-- ) distinct_ser_key; 25

-- SELECT COUNT(*) FROM 
-- (SELECT DISTINCT log_key FROM pa220_data
--     WHERE (EXTRACT(MONTH FROM time_conn) = '1' AND 
--     EXTRACT(YEAR FROM time_conn) = '2022')
-- ) distinct_log_key; 103

-- SELECT COUNT(*) FROM pa220_data WHERE (gsmnet_id IS NULL 
-- AND EXTRACT(MONTH FROM time_conn) = '1' AND 
-- EXTRACT(YEAR FROM time_conn) = '2022'); 0

-- SELECT COUNT(*) FROM pa220_data WHERE (gsmnet_id LIKE ''
-- AND EXTRACT(MONTH FROM time_conn) = '1' AND 
-- EXTRACT(YEAR FROM time_conn) = '2022'); 0

