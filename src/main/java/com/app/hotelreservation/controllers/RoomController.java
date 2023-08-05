package com.app.hotelreservation.controllers;

import com.app.hotelreservation.entities.Room;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class RoomController {

    @PostMapping("/addroom")
    public void postRoom(Room room)
    {
        // adding a room to the database
    }
    @GetMapping("/getroom")
    public Room getRoom(int id)
    {
        return null;
    }
    public List<Room> getAllRooms()
    {
        return null;
    }
}
