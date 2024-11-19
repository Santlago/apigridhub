CREATE TABLE ESPACO (
    espaco_id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    usuario_id UUID NOT NULL,
    endereco VARCHAR(200) NOT NULL,
    fonte_energia VARCHAR(100),
    orientacao_solar VARCHAR(50),
    media_solar VARCHAR(100),
    topografia VARCHAR(100),
    area_total VARCHAR(100),
    direcao_vento VARCHAR(100),
    velocidade_vento VARCHAR(100),
    nome_espaco VARCHAR(100) NOT NULL,
    foto_espaco VARCHAR(255),
    CONSTRAINT fk_usuario
        FOREIGN KEY(usuario_id)
        REFERENCES USUARIO(usuario_id)
);