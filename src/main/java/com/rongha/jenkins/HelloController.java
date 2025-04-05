package com.rongha.jenkins;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HelloController {

    @GetMapping("/rongha")
    public String hello() {
        return "Hello Rongha!";
    }
}
