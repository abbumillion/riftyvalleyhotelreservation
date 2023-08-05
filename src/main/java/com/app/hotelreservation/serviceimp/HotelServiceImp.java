package com.app.hotelreservation.serviceimp;

import com.app.hotelreservation.dto.Hoteldto;
import com.app.hotelreservation.repository.HotelRepository;
import com.app.hotelreservation.services.HotelServices;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class HotelServiceImp implements HotelServices {
    @Autowired
    private HotelRepository hotelRepository;
    @Override
    public Hoteldto getHotelById(long hotelId) {
        return null;
    }

    @Override
    public Hoteldto getHotelByName(String hotelName) {
        return null;
    }

    @Override
    public Hoteldto getHotelByEmail(String hotelEmail) {
        return null;
    }

    @Override
    public List<Hoteldto> getAllHotels() {
        return null;
    }

    @Override
    public void removeHotelById(long hotelId) {

    }

    @Override
    public void removeHotelByName(String hotelName) {

    }

    @Override
    public void removeHotelByEmail(String hotelEmail) {

    }

    @Override
    public Hoteldto addHotel(Hoteldto hoteldto) {
        return null;
    }

    @Override
    public Hoteldto updateHotel(Hoteldto hoteldto) {
        return null;
    }
}
