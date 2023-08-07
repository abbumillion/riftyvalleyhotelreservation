package com.app.hotelreservation.mapper;

import com.app.hotelreservation.dto.EventDto;
import com.app.hotelreservation.entities.Event;

import java.util.Optional;

public class EventMapper {
    public static EventDto EventToEventDto(Optional<Event> event)
    {
        EventDto eventDto = new EventDto();
//        eventDto.setEventId(event.get());
//        eventDto.setEventName(event.getEventName());
//        eventDto.setEventDate(event.getEventDate());
//        eventDto.setEventTime(event.getEventTime());
        return eventDto;
    }
    public static Event EventDtoToEvent(Optional<Event> evnt)
    {
        Event event = new Event();
//        eventDto.setEventId(event.get());
//        eventDto.setEventName(event.getEventName());
//        eventDto.setEventDate(event.getEventDate());
//        eventDto.setEventTime(event.getEventTime());
        return event;
    }

}
