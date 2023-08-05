package com.app.hotelreservation.controllers;

import com.app.hotelreservation.dto.UserDto;
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

    @GetMapping("/signup")
    public String signUp(UserDto userDto)
    {
        System.out.println(userDto);
        return "about";
    }
    @GetMapping("/contactus")
    public String contactUs()
    {
        return "contact us";
    }
    @GetMapping("/events")
    public String events()
    {
        return "events";
    }
    @GetMapping("/places")
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
