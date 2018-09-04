package com.sagar.docker.springbootdocker.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("rest/docker/hello")
public class HelloResource {
    @GetMapping
    public String hello(){
        return "Voila More changes!! New Changes!! Hello World, This change is from git hub";
    }
}



