package br.com.fiap.apigridhub.usuario;

import org.springframework.amqp.rabbit.core.RabbitTemplate;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class UsuarioService {

    private final UsuarioRepository usuarioRepository;
    private final PasswordEncoder passwordEncoder;
    private final RabbitTemplate rabbitTemplate;

    public UsuarioService(UsuarioRepository userRepository, PasswordEncoder passwordEncoder, RabbitTemplate rabbitTemplate) {
        this.usuarioRepository = userRepository;
        this.passwordEncoder = passwordEncoder;
        this.rabbitTemplate = rabbitTemplate;
    }

    public Usuario register(Usuario user) {
        rabbitTemplate.convertAndSend("email-queue", "Usuário cadastrado com sucesso!");
        user.setSenha(passwordEncoder.encode(user.getSenha()));
        return usuarioRepository.save(user);
    }

    public List<Usuario> findAll() {
        return usuarioRepository.findAll();
    }

    public Optional<Usuario> findByEmail(String email) {
        return usuarioRepository.findByEmail(email);
    }
}