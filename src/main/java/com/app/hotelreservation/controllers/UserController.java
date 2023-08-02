package com.app.hotelreservation.controllers;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class UserController {
    @GetMapping("/")
    public String index()
    {
        return "index";
    }
    @GetMapping("/about")
    public String about()
    {
        return "about";
    }
    @GetMapping("/contactus")
    public String aontactUs()
    {
        return "contact us";
    }
    @GetMapping("/about")
    public String events()
    {
        return "events";
    }
    @GetMapping("/about")
    public String places()
    {
        return "places";
    }
    @GetMapping("/login")
    public String login()
    {
        return "login";
    }
    @GetMapping("/logout")
    public String logout()
    {
        return "logout";
    }
}
