CREATE TABLE USUARIO (
     usuario_id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
     email VARCHAR(100) NOT NULL,
     senha VARCHAR(100) NOT NULL,
     nome VARCHAR(100) NOT NULL,
     telefone VARCHAR(30),
     foto_perfil VARCHAR(255)
);

INSERT INTO USUARIO (usuario_id, email, senha, nome, telefone, foto_perfil) VALUES (gen_random_uuid(), 'alice@example.com', '$2a$10$NEh07uR8GOrobEijLDcSgeDMA3kH6n4jPmWogmcW9c1zS51Lj0Wg6', 'Alice Johnson', '555-1234', 'http://example.com/photos/alice.jpg');
INSERT INTO USUARIO (usuario_id, email, senha, nome, telefone, foto_perfil) VALUES (gen_random_uuid(), 'bob@example.com', '$2a$10$NEh07uR8GOrobEijLDcSgeDMA3kH6n4jPmWogmcW9c1zS51Lj0Wg6', 'Bob Smith', '555-5678', 'http://example.com/photos/bob.jpg');
INSERT INTO USUARIO (usuario_id, email, senha, nome, telefone, foto_perfil) VALUES (gen_random_uuid(), 'carol@example.com', '$2a$10$NEh07uR8GOrobEijLDcSgeDMA3kH6n4jPmWogmcW9c1zS51Lj0Wg6', 'Carol White', '555-8765', 'http://example.com/photos/carol.jpg');
INSERT INTO USUARIO (usuario_id, email, senha, nome, telefone, foto_perfil) VALUES (gen_random_uuid(), 'dave@example.com', '$2a$10$NEh07uR8GOrobEijLDcSgeDMA3kH6n4jPmWogmcW9c1zS51Lj0Wg6', 'Dave Brown', '555-4321', 'http://example.com/photos/dave.jpg');
INSERT INTO USUARIO (usuario_id, email, senha, nome, telefone, foto_perfil) VALUES (gen_random_uuid(), 'eve@example.com', '$2a$10$NEh07uR8GOrobEijLDcSgeDMA3kH6n4jPmWogmcW9c1zS51Lj0Wg6', 'Eve Black', '555-6789', 'http://example.com/photos/eve.jpg');