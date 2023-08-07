package com.app.hotelreservation.services;

import com.app.hotelreservation.dto.PlaceDto;
import com.app.hotelreservation.entities.Place;

import java.util.List;

public interface PlaceService {
    public PlaceDto getPlaceById(Long placeId);
    public PlaceDto getPlaceByName(String placeName);
    public List<PlaceDto> getAllPlaces();
    public void removePlaceById(Long placeId);
    public void removePlaceByName(String placeName);
    public PlaceDto addPlace(Place place);
    public PlaceDto updatePlace(Place place);
}
