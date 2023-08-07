package com.app.hotelreservation.serviceimp;

import com.app.hotelreservation.dto.PlaceDto;
import com.app.hotelreservation.entities.Place;
import com.app.hotelreservation.repository.PlaceRepository;
import com.app.hotelreservation.services.PlaceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class PlaceServiceImp implements PlaceService {
    @Autowired
    private PlaceRepository placeRepository;


    @Override
    public PlaceDto getPlaceById(Long placeId) {
        return null;
    }

    @Override
    public PlaceDto getPlaceByName(String placeName) {
        return null;
    }

    @Override
    public List<PlaceDto> getAllPlaces() {
        return null;
    }

    @Override
    public void removePlaceById(Long placeId) {

    }

    @Override
    public void removePlaceByName(String placeName) {

    }

    @Override
    public PlaceDto addPlace(Place place) {
        return null;
    }

    @Override
    public PlaceDto updatePlace(Place place) {
        return null;
    }
}
