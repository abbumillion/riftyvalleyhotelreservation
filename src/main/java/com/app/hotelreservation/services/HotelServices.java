package com.app.hotelreservation.services;

import com.app.hotelreservation.dto.Hoteldto;

import java.util.List;

public interface HotelServices {
    public Hoteldto getHotelById(long hotelId);
    public Hoteldto getHotelByName(String hotelName);
    public Hoteldto getHotelByEmail(String hotelEmail);
    public List<Hoteldto> getAllHotels();
    public void removeHotelById(long hotelId);
    public void removeHotelByName(String hotelName);
    public void removeHotelByEmail(String hotelEmail);
    public Hoteldto addHotel(Hoteldto hoteldto);
    public Hoteldto updateHotel(Hoteldto hoteldto);
}
