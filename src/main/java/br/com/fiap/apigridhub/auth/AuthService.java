package br.com.fiap.apigridhub.auth;

import br.com.fiap.apigridhub.usuario.UserService;
import br.com.fiap.apigridhub.usuario.User;
import com.auth0.jwt.JWT;
import com.auth0.jwt.algorithms.Algorithm;
import com.auth0.jwt.interfaces.DecodedJWT;
import org.springframework.http.ResponseEntity;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
public class AuthService {

    private final UserService userService;
    private final PasswordEncoder passwordEncoder;

    public AuthService(UserService userService, PasswordEncoder passwordEncoder) {
        this.userService = userService;
        this.passwordEncoder = passwordEncoder;
    }

    public ResponseEntity<Void> login(Credentials credentials) {
        Optional<User> user = userService.findByEmail(credentials.email());
        if (user.isEmpty() || !passwordEncoder.matches(credentials.senha(), user.get().getSenha())) {
            return ResponseEntity.badRequest().build();
        }
        return ResponseEntity.ok().build();
    }
}