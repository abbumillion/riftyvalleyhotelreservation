package com.app.hotelreservation.serviceimp;

import com.app.hotelreservation.dto.EventDto;
import com.app.hotelreservation.services.EventService;

import java.util.List;

public class EventServiceImp implements EventService {
    @Override
    public EventDto getEventById(long id) {
        return null;
    }

    @Override
    public EventDto getEventByName(String name) {
        return null;
    }

    @Override
    public EventDto getEventByEmail(String email) {
        return null;
    }

    @Override
    public List<EventDto> getAllEvents() {
        return null;
    }

    @Override
    public void removeEventById(long id) {

    }

    @Override
    public void removeEventByName(String fullName) {

    }

    @Override
    public EventDto addEvent(EventDto eventDto) {
        return null;
    }

    @Override
    public EventDto updateEvent(EventDto eventDto) {
        return null;
    }
}
