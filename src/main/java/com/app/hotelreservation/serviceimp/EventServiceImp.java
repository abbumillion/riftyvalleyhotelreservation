package com.app.hotelreservation.serviceimp;

import com.app.hotelreservation.dto.EventDto;
import com.app.hotelreservation.entities.Event;
import com.app.hotelreservation.repository.EventRepository;
import com.app.hotelreservation.services.EventService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class EventServiceImp implements EventService {
    @Autowired
    private EventRepository eventRepository;

    @Override
    public EventDto getEventById(Long id) {
        return null;
    }

    @Override
    public EventDto getEventByName(String eventName) {
        return null;
    }

    @Override
    public EventDto getEventByDate(String eventDate) {
        return eventRepository.findByEventDate(eventDate);
    }

    @Override
    public List<Event> getAllEvents() {
        return eventRepository.findAll();
    }

    @Override
    public void removeEventById(Long eventId) {
        eventRepository.deleteById(eventId);
    }

    @Override
    public void removeEventByName(String eventName) {

    }

    @Override
    public EventDto addEvent(Event event) {
        return null;
    }

    @Override
    public EventDto updateEvent(Event event) {
        return null;
    }
}
