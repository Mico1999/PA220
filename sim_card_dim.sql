-- Marek Miček, 540461
-- Peter Rúček, 540454

DROP TABLE IF EXISTS Sim_Card;


CREATE TABLE Sim_Card (
    sim_card_id BIGSERIAL PRIMARY KEY,
    sim_imsi character(15),
    gsmnet_id character varying(6)
);

INSERT INTO Sim_Card(sim_imsi, gsmnet_id)
SELECT sim_imsi, gsmnet_id
FROM pa220_data;

SELECT * FROM Sim_Card FETCH FIRST 100 ROWS ONLY;