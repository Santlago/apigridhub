package br.com.fiap.apigridhub.espaco;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;

public interface EspacoRepository extends JpaRepository<Espaco, Long> {

    Page<Espaco> findAllByUsuarioEmail(String email, Pageable pageable);
}
