package com.app.hotelreservation.services;

import com.app.hotelreservation.dto.Guestdto;

import java.util.List;

public interface OccupiedRoomService {
    // get guest by id
    public Guestdto getGuestById(long id);
    // get guest by name
    public Guestdto getGuestByName(String name);
    // get a guest by email
    public Guestdto getGuestByEmail(String email);
    // getting all guests
    public List<Guestdto> getAllGuests();
    // removing guest by id
    public void removeGuestById(long id);
    // removing guest by name
    public void removeGuestByName(String fullName);
    // removing guest by email
    public void removeGuestByEmail(String email);
    // adding guest  to the system
    public Guestdto addGuest(Guestdto guestdto);
    // updating guest account information
    public Guestdto updateGuest(Guestdto guestdto);
}
