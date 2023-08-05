package com.app.hotelreservation.serviceimp;

import com.app.hotelreservation.dto.PlaceDto;
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
    public PlaceDto getPlaceById(long id) {
        return null;
    }

    @Override
    public PlaceDto getPlaceByName(String name) {
        return null;
    }


    @Override
    public List<PlaceDto> getAllPlaces() {
        return null;
    }

    @Override
    public void removePlaceById(long placeId) {

    }

    @Override
    public void removePlaceByName(String placeName) {

    }

    @Override
    public PlaceDto addPlace(PlaceDto placeDto) {
        return null;
    }

    @Override
    public PlaceDto updatePlace(PlaceDto placeDto) {
        return null;
    }
}
