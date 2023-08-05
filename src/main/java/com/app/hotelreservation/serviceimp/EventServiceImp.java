package com.app.hotelreservation.serviceimp;

import com.app.hotelreservation.dto.EventDto;
import com.app.hotelreservation.mapper.EventMapper;
import com.app.hotelreservation.repository.EventRepository;
import com.app.hotelreservation.services.EventService;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

public class EventServiceImp implements EventService {
    @Autowired
    private EventRepository eventRepository;
    @Override
    public EventDto getEventById(long id) {
        return EventMapper.EventToEventDto(eventRepository.findById(id));
    }

    @Override
    public EventDto getEventByName(String name) {
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
    public void removeEventByName(String eventName) {

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
