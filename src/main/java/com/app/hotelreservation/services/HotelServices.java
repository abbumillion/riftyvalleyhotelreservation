package com.app.hotelreservation.services;

import com.app.hotelreservation.dto.HotelDto;
import com.app.hotelreservation.entities.Hotel;

import java.util.List;

public interface HotelServices {
    public HotelDto getHotelById(long hotelId);
    public HotelDto getHotelByName(String hotelName);
    public HotelDto getHotelByEmail(String hotelEmail);
    public List<HotelDto> getAllHotels();
    public void removeHotelById(long hotelId);
    public void removeHotelByName(String hotelName);
    public void removeHotelByEmail(String hotelEmail);
    public HotelDto addHotel(Hotel hotel);
    public HotelDto updateHotel(Hotel hotel);
}
