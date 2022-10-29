SELECT COUNT(*) FROM (SELECT DISTINCT sim_imsi FROM pa220_data WHERE sim_imsi IS NOT NULL) distinct_sim_imsi; --99

SELECT COUNT(*) FROM (SELECT DISTINCT device FROM pa220_data WHERE device IS NOT NULL) distinct_device; --32

SELECT COUNT(*) FROM (SELECT DISTINCT gsmnet_id FROM pa220_data WHERE gsmnet_id IS NOT NULL) distinct_gsm; --81

SELECT COUNT(*) FROM (SELECT DISTINCT program_ver FROM pa220_data WHERE program_ver IS NOT NULL) distinct_program_ver; --19

SELECT COUNT(*) FROM (SELECT DISTINCT car_key FROM pa220_data WHERE car_key IS NOT NULL) distinct_car_key; --70

SELECT COUNT(*) FROM (SELECT DISTINCT service_key FROM pa220_data WHERE service_key IS NOT NULL) distinct_ser_key; --1 058 467

SELECT COUNT(*) FROM (SELECT DISTINCT log_key FROM pa220_data WHERE log_key IS NOT NULL) distinct_log_key; --6 692 915

SELECT COUNT(*) FROM pa220_data WHERE (gsmnet_id IS NULL) ; --6

SELECT COUNT(*) FROM pa220_data WHERE (gsmnet_id LIKE '') ; --41431

SELECT EXTRACT(MONTH FROM time_conn) as month, EXTRACT(YEAR FROM time_conn) as year 
FROM pa220_data GROUP BY year, month
ORDER BY year DESC, month DESC; -- 2022 - 01

SELECT COUNT(*) FROM 
(SELECT DISTINCT sim_imsi FROM pa220_data
    WHERE (EXTRACT(MONTH FROM time_conn) = '1' AND 
    EXTRACT(YEAR FROM time_conn) = '2022' AND
    sim_imsi IS NOT NULL)
) distinct_sim_imsi; --18

SELECT COUNT(*) FROM 
(SELECT DISTINCT device FROM pa220_data
    WHERE (EXTRACT(MONTH FROM time_conn) = '1' AND 
    EXTRACT(YEAR FROM time_conn) = '2022' AND
    device IS NOT NULL)
) distinct_device; --3

SELECT COUNT(*) FROM 
(SELECT DISTINCT gsmnet_id FROM pa220_data
    WHERE (EXTRACT(MONTH FROM time_conn) = '1' AND 
    EXTRACT(YEAR FROM time_conn) = '2022' AND
    gsmnet_id IS NOT NULL)
) distinct_gsm; --4

SELECT COUNT(*) FROM 
(SELECT DISTINCT program_ver FROM pa220_data
    WHERE (EXTRACT(MONTH FROM time_conn) = '1' AND 
    EXTRACT(YEAR FROM time_conn) = '2022' AND
    program_ver IS NOT NULL)
) distinct_program_ver; --4

SELECT COUNT(*) FROM 
(SELECT DISTINCT car_key FROM pa220_data
    WHERE (EXTRACT(MONTH FROM time_conn) = '1' AND 
    EXTRACT(YEAR FROM time_conn) = '2022' AND
    car_key IS NOT NULL)
) distinct_car_key; --4

SELECT COUNT(*) FROM 
(SELECT DISTINCT service_key FROM pa220_data
    WHERE (EXTRACT(MONTH FROM time_conn) = '1' AND 
    EXTRACT(YEAR FROM time_conn) = '2022' AND
    service_key IS NOT NULL)
) distinct_ser_key; --24

SELECT COUNT(*) FROM 
(SELECT DISTINCT log_key FROM pa220_data
    WHERE (EXTRACT(MONTH FROM time_conn) = '1' AND 
    EXTRACT(YEAR FROM time_conn) = '2022' AND
    log_key IS NOT NULL)
) distinct_log_key; --103

SELECT COUNT(*) FROM pa220_data WHERE (gsmnet_id IS NULL 
AND EXTRACT(MONTH FROM time_conn) = '1' AND 
EXTRACT(YEAR FROM time_conn) = '2022'); --0

SELECT COUNT(*) FROM pa220_data WHERE (gsmnet_id LIKE ''
AND EXTRACT(MONTH FROM time_conn) = '1' AND 
EXTRACT(YEAR FROM time_conn) = '2022'); --0