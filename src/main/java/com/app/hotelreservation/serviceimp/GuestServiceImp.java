package com.app.hotelreservation.serviceimp;

import com.app.hotelreservation.dto.GuestDto;
import com.app.hotelreservation.entities.Guest;
import com.app.hotelreservation.repository.GuestRepository;
import com.app.hotelreservation.services.GuestService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class GuestServiceImp implements GuestService {
    @Autowired
    private GuestRepository guestRepository;
    @Override
    public GuestDto getGuestById(Long guestId) {
        return null;
    }

    @Override
    public GuestDto getGuestByName(String guestName) {
        return null;
    }

    @Override
    public GuestDto getGuestByEmail(String guestEmail) {
        return null;
    }

    @Override
    public List<GuestDto> getAllGuests() {
        return null;
    }

    @Override
    public void removeGuestById(Long guestId) {

    }

    @Override
    public void removeGuestByName(String guestFullName) {

    }

    @Override
    public void removeGuestByEmail(String guestEmail) {

    }

    @Override
    public GuestDto addGuest(Guest guest) {
        return null;
    }

    @Override
    public GuestDto updateGuest(Guest guest) {
        return null;
    }
}
