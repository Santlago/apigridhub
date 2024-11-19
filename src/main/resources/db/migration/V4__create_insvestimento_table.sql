CREATE TABLE INVESTIMENTO (
    investimento_id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    usuario_id UUID NOT NULL,
    microgrid_id UUID NOT NULL,
    descricao_proposta VARCHAR(512),
    CONSTRAINT fk_usuario
        FOREIGN KEY(usuario_id)
        REFERENCES USUARIO(usuario_id),
    CONSTRAINT fk_microgrid
        FOREIGN KEY(microgrid_id)
        REFERENCES MICROGRID(microgrid_id)
);