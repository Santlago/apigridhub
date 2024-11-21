package br.com.fiap.apigridhub.auth;

import br.com.fiap.apigridhub.usuario.UserService;
import br.com.fiap.apigridhub.usuario.User;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/api/auth")
public class AuthController {


    private final UserService userService;
    private final AuthService authService;

    public AuthController(UserService userService, AuthService authService) {
        this.userService = userService;
        this.authService = authService;
    }

    @PostMapping("/signup")
    public User signup(@RequestBody User user) {
        return userService.register(user);
    }

    @PostMapping("/login")
    public Token login(@RequestBody Credentials credentials) {
        return authService.login(credentials);
    }
}