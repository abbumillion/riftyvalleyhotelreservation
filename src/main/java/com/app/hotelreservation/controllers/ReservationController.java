package com.app.hotelreservation.controllers;

import com.app.hotelreservation.entities.Reservation;
import com.app.hotelreservation.entities.Room;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class ReservationController {
    public void postReservation(Reservation reservation)
    {}
    public Room getReservation(int id)
    {
        return null;
    }
    public List<Reservation> getAllReservations()
    {
        return null;
    }
}
