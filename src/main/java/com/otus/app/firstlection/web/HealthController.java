package com.otus.app.firstlection.web;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.RequestMapping;

@RestController
@RequestMapping("/")
public class HealthController {

    @GetMapping("health")
    public HealthStateDto healthState() {
        return new HealthStateDto("OK");
    }

}

