package com.app.hotelreservation.controllers;

import com.app.hotelreservation.dto.EventDto;
import com.app.hotelreservation.serviceimp.EventServiceImp;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class EventController {
    @Autowired
    private EventServiceImp eventServiceImp;
    @GetMapping(name = "/add event")
    public String addEvent(EventDto eventDto)
    {
        return "add event";
    }
    @GetMapping(name = "/get event")
    public String getEvent(long eventId)
    {
        return "get event";
    }
    @GetMapping(name = "/events")
    public String events()
    {
        return "events";
    }
    @GetMapping(name = "/remove event")
    public String removeEvent(long eventId)
    {
        return "remove event by id";
    }
    @GetMapping(name = "/get event by date")
    public String getEventByDate(String eventDate)
    {
        return "get event by date";
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
