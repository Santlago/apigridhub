package br.com.fiap.apigridhub.espaco;

import br.com.fiap.apigridhub.espaco.dto.EspacoFormRequest;
import br.com.fiap.apigridhub.usuario.UsuarioRepository;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.web.PageableDefault;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping()
public class EspacoController {

    private final UsuarioRepository usuarioRepository;
    private final EspacoService espacoService;

    public EspacoController(UsuarioRepository userRepository, EspacoService espacoService) {
        this.usuarioRepository = userRepository;
        this.espacoService = espacoService;
    }

    @GetMapping("espacos")
    public Page<Espaco> findAll(@PageableDefault(size = 5) Pageable pageable) {
        var email = SecurityContextHolder.getContext().getAuthentication().getPrincipal().toString();
        return espacoService.findAll(pageable);
    }

    @GetMapping("usuarioespacos")
    public Page<Espaco> findAllByUserEmail(@PageableDefault(size = 5) Pageable pageable) {
        var email = SecurityContextHolder.getContext().getAuthentication().getPrincipal().toString();
        return espacoService.findAllByUserEmail(email, pageable);
    }

    @PostMapping("usuarioespacos")
    public Espaco create(@RequestBody EspacoFormRequest espacoFormRequest) {
        var email = SecurityContextHolder.getContext().getAuthentication().getPrincipal().toString();
        var usuario = usuarioRepository.findByEmail(email)
                .orElseThrow(() -> new UsernameNotFoundException("User not found"));
        var espaco = espacoFormRequest.toModel(usuario);
        System.out.println(espaco);
        return espacoService.create(espaco);
    }
}
