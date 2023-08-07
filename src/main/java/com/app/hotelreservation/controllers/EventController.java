package com.app.hotelreservation.controllers;

import com.app.hotelreservation.dto.EventDto;
import com.app.hotelreservation.entities.Event;
import com.app.hotelreservation.serviceimp.EventServiceImp;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class EventController {
    @Autowired
    private EventServiceImp eventServiceImp;
    @GetMapping(name = "/add event")
    public String addEvent(Event event)
    {
        return "add event";
    }
    @GetMapping(name = "/get event")
    public EventDto getEvent(Long eventId)
    {
        return eventServiceImp.getEventById(eventId);
    }
    @GetMapping(name = "/events")
    public List<EventDto> events()
    {
        return eventServiceImp.getAllEvents();
    }
    @GetMapping(name = "/remove event")
    public String removeEvent(Long eventId)
    {
        eventServiceImp.removeEventById(eventId);
        return "remove event by id";
    }
    @GetMapping(name = "/get event by date")
    public EventDto getEventByDate(String eventDate)
    {
        return eventServiceImp.getEventByDate(eventDate);
    }
    @GetMapping(name = "/get event by location or place")
    public String getEventByPlace(String eventPlace)
    {
        return "get event by place";
    }
    @GetMapping(name = "/search for event")
    public String searchEventByEventName(String eventNameKeyword)
    {
        return "search event by event name";
    }
}
