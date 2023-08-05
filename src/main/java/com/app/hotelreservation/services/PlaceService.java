package com.app.hotelreservation.services;

import com.app.hotelreservation.dto.PlaceDto;

import java.util.List;

public interface PlaceService {
    public PlaceDto getPlaceById(long id);
    public PlaceDto getPlaceByName(String name);
    public List<PlaceDto> getAllPlaces();
    public void removePlaceById(long placeId);
    public void removePlaceByName(String placeName);
    public PlaceDto addPlace(PlaceDto placeDto);
    public PlaceDto updatePlace(PlaceDto placeDto);
}
