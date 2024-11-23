package br.com.fiap.apigridhub.espaco;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

@Service
public class EspacoService {

    private final EspacoRepository espacoRepository;

    public EspacoService(EspacoRepository espacoRepository) {
        this.espacoRepository = espacoRepository;
    }

    public Espaco create(Espaco espaco) {
        return espacoRepository.save(espaco);
    }

    public Page<Espaco> findAll(Pageable pageable) {
        return espacoRepository.findAll(pageable);
    }

    public Page<Espaco> findAllByUserEmail(String email, Pageable pageable) {
        return espacoRepository.findAllByUsuarioEmail(email, pageable);
    }
}
