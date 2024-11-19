CREATE TABLE MICROGRID (
    microgrid_id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    usuario_id UUID NOT NULL,
    espaco_id UUID NOT NULL,
    radiacao_solar_necessaria VARCHAR(100),
    topografia_necessaria VARCHAR(100),
    area_total_necessaria VARCHAR(100),
    velocidade_vento_necessaria VARCHAR(100),
    fonte_energia VARCHAR(100),
    meta_financiamento NUMERIC(20),
    nome_microgrid VARCHAR(100) NOT NULL,
    foto_microgrid VARCHAR(255),
    CONSTRAINT fk_usuario
        FOREIGN KEY(usuario_id)
        REFERENCES USUARIO(usuario_id),
    CONSTRAINT fk_espaco
        FOREIGN KEY(espaco_id)
        REFERENCES ESPACO(espaco_id)
);