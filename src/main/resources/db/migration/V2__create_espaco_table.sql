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

-- Inserts for Alice
INSERT INTO ESPACO (espaco_id, usuario_id, endereco, fonte_energia, orientacao_solar, media_solar, topografia, area_total, direcao_vento, velocidade_vento, nome_espaco, foto_espaco)
VALUES (gen_random_uuid(), (SELECT usuario_id FROM USUARIO WHERE email = 'alice@example.com'), '123 Alice St, City, Country', 'Solar', 'South', 'High', 'Flat', '500 sqm', 'North', '10 km/h', 'Alice Space 1', 'http://example.com/photos/alice_space1.jpg');

INSERT INTO ESPACO (espaco_id, usuario_id, endereco, fonte_energia, orientacao_solar, media_solar, topografia, area_total, direcao_vento, velocidade_vento, nome_espaco, foto_espaco)
VALUES (gen_random_uuid(), (SELECT usuario_id FROM USUARIO WHERE email = 'alice@example.com'), '124 Alice St, City, Country', 'Wind', 'East', 'Medium', 'Hilly', '600 sqm', 'East', '15 km/h', 'Alice Space 2', 'http://example.com/photos/alice_space2.jpg');

INSERT INTO ESPACO (espaco_id, usuario_id, endereco, fonte_energia, orientacao_solar, media_solar, topografia, area_total, direcao_vento, velocidade_vento, nome_espaco, foto_espaco)
VALUES (gen_random_uuid(), (SELECT usuario_id FROM USUARIO WHERE email = 'alice@example.com'), '125 Alice St, City, Country', 'Hydro', 'West', 'Low', 'Mountainous', '700 sqm', 'West', '20 km/h', 'Alice Space 3', 'http://example.com/photos/alice_space3.jpg');

INSERT INTO ESPACO (espaco_id, usuario_id, endereco, fonte_energia, orientacao_solar, media_solar, topografia, area_total, direcao_vento, velocidade_vento, nome_espaco, foto_espaco)
VALUES (gen_random_uuid(), (SELECT usuario_id FROM USUARIO WHERE email = 'alice@example.com'), '126 Alice St, City, Country', 'Geothermal', 'North', 'High', 'Flat', '800 sqm', 'South', '25 km/h', 'Alice Space 4', 'http://example.com/photos/alice_space4.jpg');

INSERT INTO ESPACO (espaco_id, usuario_id, endereco, fonte_energia, orientacao_solar, media_solar, topografia, area_total, direcao_vento, velocidade_vento, nome_espaco, foto_espaco)
VALUES (gen_random_uuid(), (SELECT usuario_id FROM USUARIO WHERE email = 'alice@example.com'), '127 Alice St, City, Country', 'Solar', 'South', 'High', 'Flat', '900 sqm', 'North', '30 km/h', 'Alice Space 5', 'http://example.com/photos/alice_space5.jpg');

INSERT INTO ESPACO (espaco_id, usuario_id, endereco, fonte_energia, orientacao_solar, media_solar, topografia, area_total, direcao_vento, velocidade_vento, nome_espaco, foto_espaco)
VALUES (gen_random_uuid(), (SELECT usuario_id FROM USUARIO WHERE email = 'alice@example.com'), '128 Alice St, City, Country', 'Wind', 'East', 'Medium', 'Hilly', '1000 sqm', 'East', '35 km/h', 'Alice Space 6', 'http://example.com/photos/alice_space6.jpg');

INSERT INTO ESPACO (espaco_id, usuario_id, endereco, fonte_energia, orientacao_solar, media_solar, topografia, area_total, direcao_vento, velocidade_vento, nome_espaco, foto_espaco)
VALUES (gen_random_uuid(), (SELECT usuario_id FROM USUARIO WHERE email = 'alice@example.com'), '129 Alice St, City, Country', 'Hydro', 'West', 'Low', 'Mountainous', '1100 sqm', 'West', '40 km/h', 'Alice Space 7', 'http://example.com/photos/alice_space7.jpg');

INSERT INTO ESPACO (espaco_id, usuario_id, endereco, fonte_energia, orientacao_solar, media_solar, topografia, area_total, direcao_vento, velocidade_vento, nome_espaco, foto_espaco)
VALUES (gen_random_uuid(), (SELECT usuario_id FROM USUARIO WHERE email = 'alice@example.com'), '130 Alice St, City, Country', 'Geothermal', 'North', 'High', 'Flat', '1200 sqm', 'South', '45 km/h', 'Alice Space 8', 'http://example.com/photos/alice_space8.jpg');

-- Inserts for Bob
INSERT INTO ESPACO (espaco_id, usuario_id, endereco, fonte_energia, orientacao_solar, media_solar, topografia, area_total, direcao_vento, velocidade_vento, nome_espaco, foto_espaco)
VALUES (gen_random_uuid(), (SELECT usuario_id FROM USUARIO WHERE email = 'bob@example.com'), '123 Bob St, City, Country', 'Solar', 'South', 'High', 'Flat', '500 sqm', 'North', '10 km/h', 'Bob Space 1', 'http://example.com/photos/bob_space1.jpg');

INSERT INTO ESPACO (espaco_id, usuario_id, endereco, fonte_energia, orientacao_solar, media_solar, topografia, area_total, direcao_vento, velocidade_vento, nome_espaco, foto_espaco)
VALUES (gen_random_uuid(), (SELECT usuario_id FROM USUARIO WHERE email = 'bob@example.com'), '124 Bob St, City, Country', 'Wind', 'East', 'Medium', 'Hilly', '600 sqm', 'East', '15 km/h', 'Bob Space 2', 'http://example.com/photos/bob_space2.jpg');

INSERT INTO ESPACO (espaco_id, usuario_id, endereco, fonte_energia, orientacao_solar, media_solar, topografia, area_total, direcao_vento, velocidade_vento, nome_espaco, foto_espaco)
VALUES (gen_random_uuid(), (SELECT usuario_id FROM USUARIO WHERE email = 'bob@example.com'), '125 Bob St, City, Country', 'Hydro', 'West', 'Low', 'Mountainous', '700 sqm', 'West', '20 km/h', 'Bob Space 3', 'http://example.com/photos/bob_space3.jpg');

INSERT INTO ESPACO (espaco_id, usuario_id, endereco, fonte_energia, orientacao_solar, media_solar, topografia, area_total, direcao_vento, velocidade_vento, nome_espaco, foto_espaco)
VALUES (gen_random_uuid(), (SELECT usuario_id FROM USUARIO WHERE email = 'bob@example.com'), '126 Bob St, City, Country', 'Geothermal', 'North', 'High', 'Flat', '800 sqm', 'South', '25 km/h', 'Bob Space 4', 'http://example.com/photos/bob_space4.jpg');

INSERT INTO ESPACO (espaco_id, usuario_id, endereco, fonte_energia, orientacao_solar, media_solar, topografia, area_total, direcao_vento, velocidade_vento, nome_espaco, foto_espaco)
VALUES (gen_random_uuid(), (SELECT usuario_id FROM USUARIO WHERE email = 'bob@example.com'), '127 Bob St, City, Country', 'Solar', 'South', 'High', 'Flat', '900 sqm', 'North', '30 km/h', 'Bob Space 5', 'http://example.com/photos/bob_space5.jpg');