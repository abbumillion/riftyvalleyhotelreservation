package com.app.hotelreservation.serviceimp;

import com.app.hotelreservation.dto.HotelDto;
import com.app.hotelreservation.entities.Hotel;
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
    public HotelDto getHotelById(long hotelId) {
        return null;
    }

    @Override
    public HotelDto getHotelByName(String hotelName) {
        return null;
    }

    @Override
    public HotelDto getHotelByEmail(String hotelEmail) {
        return null;
    }

    @Override
    public List<HotelDto> getAllHotels() {
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
    public HotelDto addHotel(Hotel hotel) {
        return null;
    }

    @Override
    public HotelDto updateHotel(Hotel hotel) {
        return null;
    }
}
