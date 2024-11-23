package br.com.fiap.apigridhub.espaco;

import br.com.fiap.apigridhub.usuario.Usuario;
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
@Table(name = "ESPACO")
public class Espaco {

    @Id
    @GeneratedValue
    private UUID espaco_id;

    @ManyToOne
    @JoinColumn(name = "usuario_id")
    Usuario usuario;

    private String endereco;

    private String fonte_energia;

    private String orientacao_solar;

    private String media_solar;

    private String topografia;

    private String area_total;

    private String direcao_vento;

    private String velocidade_vento;

    private String nome_espaco;

    private String foto_espaco;

    private String descricao_espaco;
}