package com.app.hotelreservation.mapper;

import com.app.hotelreservation.dto.PlaceDto;
import com.app.hotelreservation.entities.Place;

public class PlaceMapper {
    public static PlaceDto PlaceToPlaceDto()
    {
        PlaceDto placeDto = new PlaceDto();
        return placeDto;
    }
    public static Place PlaceDToToPlace()
    {
        Place place = new Place();
        return place;
    }
}
