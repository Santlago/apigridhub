package br.com.fiap.apigridhub.auth;

import br.com.fiap.apigridhub.usuario.UsuarioService;
import br.com.fiap.apigridhub.usuario.Usuario;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/api/auth")
public class AuthController {


    private final UsuarioService userService;
    private final AuthService authService;

    public AuthController(UsuarioService userService, AuthService authService) {
        this.userService = userService;
        this.authService = authService;
    }

    @PostMapping("/signup")
    public Usuario signup(@RequestBody Usuario user) {
        return userService.register(user);
    }

    @PostMapping("/login")
    public Token login(@RequestBody Credentials credentials) {
        return authService.login(credentials);
    }
}