-- Marek Miček, 540461
-- Peter Rúček, 540454

DROP TABLE IF EXISTS SimCard;

CREATE TABLE SimCard (
    sim_card_id BIGSERIAL PRIMARY KEY,
    sim_imsi character(15),
    gsmnet_id character varying(6)
);

INSERT INTO SimCard(sim_imsi, gsmnet_id)
SELECT sim_imsi, gsmnet_id
FROM public.pa220_data;
