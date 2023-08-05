package com.app.hotelreservation.services;

import com.app.hotelreservation.dto.EventDto;
import com.app.hotelreservation.dto.Guestdto;

import java.util.List;

public interface EventService {
    // get event by id
    public EventDto getEventById(long id);
    // get event by name
    public EventDto getEventByName(String name);
    // get an event by email
    public EventDto getEventByEmail(String email);
    // getting all events
    public List<EventDto> getAllEvents();
    // removing guest by id
    public void removeEventById(long id);
    // removing guest by name
    public void removeEventByName(String fullName);
    // removing guest by email
//    public void removeEventByEmail(String email);
    // adding guest  to the system
    public EventDto addEvent(EventDto eventDto);
    // updating guest account information
    public EventDto updateEvent(EventDto eventDto);
}
