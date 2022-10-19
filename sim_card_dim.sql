DROP TABLE if EXISTS Sim_Card;


CREATE TABLE Sim_Card (
    sim_card_key BIGSERIAL PRIMARY KEY,
    sim_imsi character(15),
    gsmnet_id character varying(6)
);

INSERT INTO Sim_Card(sim_imsi, gsmnet_id)
SELECT sim_imsi, gsmnet_id
FROM pa220_data;

SELECT count(sim_card_key) FROM Sim_Card;

--SELECT * FROM Sim_Card
--WHERE sim_card_key < 10;