package com.app.hotelreservation.services;

import com.app.hotelreservation.dto.EventDto;

import java.util.List;

public interface EventService {
    public EventDto getEventById(long id);
    public EventDto getEventByName(String name);
    public List<EventDto> getAllEvents();
    public void removeEventById(long id);
    public void removeEventByName(String eventName);
    public EventDto addEvent(EventDto eventDto);
    public EventDto updateEvent(EventDto eventDto);
}
