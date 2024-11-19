CREATE TABLE USUARIO (
     usuario_id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
     email VARCHAR(100) NOT NULL,
     senha VARCHAR(100) NOT NULL,
     nome VARCHAR(100) NOT NULL,
     telefone VARCHAR(30),
     foto_perfil VARCHAR(255)
);