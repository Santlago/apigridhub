package br.com.fiap.apigridhub.usuario;

import org.springframework.amqp.rabbit.core.RabbitTemplate;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping("/users")
public class UsuarioController {


    private final UsuarioService usuarioService;

    public UsuarioController(UsuarioService usuarioService) {
        this.usuarioService = usuarioService;
    }

    @GetMapping("/profile")
    public Optional<Usuario> getUserByEmail() {
        var email = SecurityContextHolder.getContext().getAuthentication().getPrincipal().toString();
        System.out.println("email" + email);
        return usuarioService.findByEmail(email);
    }

    @PostMapping
    public Usuario createUser(@RequestBody Usuario user) {
        return usuarioService.register(user);
    }

    @GetMapping
    public List<Usuario> getAllUsers() {
        return usuarioService.findAll();
    }
}
