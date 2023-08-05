package com.app.hotelreservation.controllers;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
@RestController
public class GuestController {
    @GetMapping("/reservation")
    public String myReservation()
    {
        return "my reservation";
    }
}
