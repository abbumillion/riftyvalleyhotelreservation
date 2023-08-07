package com.app.hotelreservation.services;

import com.app.hotelreservation.dto.GuestDto;
import com.app.hotelreservation.entities.Guest;

import java.util.List;

public interface GuestService {
    public GuestDto getGuestById(Long guestId);
    public GuestDto getGuestByName(String guestName);
    public GuestDto getGuestByEmail(String guestEmail);
    public List<GuestDto> getAllGuests();
    public void removeGuestById(Long guestId);
    public void removeGuestByName(String guestFullName);
    public void removeGuestByEmail(String guestEmail);
    public GuestDto addGuest(Guest guest);
    public GuestDto updateGuest(Guest guest);
}
