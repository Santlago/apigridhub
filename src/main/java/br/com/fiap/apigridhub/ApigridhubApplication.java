package br.com.fiap.apigridhub;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@SpringBootApplication
public class ApigridhubApplication {

    public static void main(String[] args) {
        SpringApplication.run(ApigridhubApplication.class, args);
    }

    @RequestMapping("/")
    @ResponseBody
    public String index() {
        return "Welcome to API GridHub!";
    }
}