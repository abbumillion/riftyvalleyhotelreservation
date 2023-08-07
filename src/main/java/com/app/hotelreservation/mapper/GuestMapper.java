package com.app.hotelreservation.mapper;

import com.app.hotelreservation.dto.GuestDto;
import com.app.hotelreservation.entities.Guest;

public class GuestMapper {
    public static GuestDto GuestToGuestDto()
    {
        GuestDto guestDto = new GuestDto();
        return guestDto;
    }
    public static Guest GuestDToToGuest()
    {
        Guest guest = new Guest();
        return guest;
    }
}
