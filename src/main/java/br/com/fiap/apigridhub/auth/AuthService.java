package br.com.fiap.apigridhub.auth;

import br.com.fiap.apigridhub.usuario.UsuarioRepository;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

@Service
public class AuthService {

    private final PasswordEncoder passwordEncoder;
    private final TokenService tokenService;
    private final UsuarioRepository userRepository;

    public AuthService(PasswordEncoder passwordEncoder, TokenService tokenService, UsuarioRepository userRepository) {
        this.passwordEncoder = passwordEncoder;
        this.tokenService = tokenService;
        this.userRepository = userRepository;
    }

    public Token login(Credentials credentials) {
        var user = userRepository.findByEmail(credentials.email())
                .orElseThrow( () -> new RuntimeException("Access Denied1") );
        System.out.println(credentials.senha());
        System.out.println(user.getSenha());
        if ( !passwordEncoder.matches(credentials.senha(), user.getSenha()) )
            throw new RuntimeException("Access Denied2");

        return tokenService.createToken(credentials);
    }
}