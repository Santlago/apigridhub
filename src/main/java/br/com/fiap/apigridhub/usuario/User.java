package br.com.fiap.apigridhub.usuario;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.UUID;

@Entity
@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
@Table(name = "USUARIO")
public class User {

    @Id
    UUID usuario_id = UUID.randomUUID();

    String nome;

    @Column(unique = true)
    String email;

    String senha;
    String telefone;
    String foto_perfil;
}