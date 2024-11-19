CREATE TABLE RELATORIO (
    relatorio_id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    microgrid_id UUID NOT NULL,
    energia_gerada VARCHAR(50),
    temp_painel_solar VARCHAR(50),
    lucro_gerado VARCHAR(50),
    CONSTRAINT fk_microgrid
        FOREIGN KEY(microgrid_id)
        REFERENCES MICROGRID(microgrid_id)
);