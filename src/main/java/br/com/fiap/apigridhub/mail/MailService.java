package br.com.fiap.apigridhub.mail;

import jakarta.mail.MessagingException;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;

@Service
public class MailService {

    private final JavaMailSenderImpl mailSender;

    public MailService(JavaMailSenderImpl mailSender) {
        this.mailSender = mailSender;
    }

    public void sendMail(String message) throws MessagingException {
        var email = mailSender.createMimeMessage();
        var helper = new MimeMessageHelper(email);

        helper.setTo("admin@gridhub.com.br");
        helper.setSubject("Conta Criada");
        helper.setText("""
                    <h2>Nova Conta</h2>
                    <p>%s</p>
                """.formatted(message), true);

        mailSender.send(email);
    }
}
