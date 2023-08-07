package com.app.hotelreservation.services;

import com.app.hotelreservation.dto.EventDto;
import com.app.hotelreservation.entities.Event;

import java.util.List;

public interface EventService {
    public EventDto getEventById(Long id);
    public EventDto getEventByName(String eventName);
    public EventDto getEventByDate(String eventDate);
    public List<Event> getAllEvents();
    public void removeEventById(Long id);
    public void removeEventByName(String eventName);
    public EventDto addEvent(Event event);
    public EventDto updateEvent(Event event);
}
