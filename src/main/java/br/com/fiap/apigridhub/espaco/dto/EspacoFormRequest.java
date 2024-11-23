package br.com.fiap.apigridhub.espaco.dto;

import br.com.fiap.apigridhub.espaco.Espaco;
import br.com.fiap.apigridhub.usuario.Usuario;

public record EspacoFormRequest(String nome_espaco, String foto_espaco, String velocidade_vento, String direcao_vento, String area_total, String topografia, String media_solar, String orientacao_solar, String fonte_energia, String endereco) {
    public Espaco toModel(Usuario usuario) {
        return Espaco.builder()
                .nome_espaco(nome_espaco)
                .foto_espaco(foto_espaco)
                .velocidade_vento(velocidade_vento)
                .direcao_vento(direcao_vento)
                .area_total(area_total)
                .topografia(topografia)
                .media_solar(media_solar)
                .orientacao_solar(orientacao_solar)
                .fonte_energia(fonte_energia)
                .endereco(endereco)
                .descricao_espaco("")
                .usuario(usuario)
                .build();
    }
}
