package com.app.hotelreservation.mapper;

import com.app.hotelreservation.dto.HotelDto;
import com.app.hotelreservation.entities.Hotel;

public class HotelMapper {
    public static HotelDto HotelToHotelDto()
    {
        HotelDto hotelDto = new HotelDto();
        return hotelDto;
    }
    public static Hotel HotelDToToHotel()
    {
        Hotel hotel = new Hotel();
        return hotel;
    }
}
