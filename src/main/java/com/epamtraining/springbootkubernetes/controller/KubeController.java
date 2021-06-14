package com.epamtraining.springbootkubernetes.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class KubeController {

    @RequestMapping("/ping")
    public String ping() {
        return "pong";
    }
}