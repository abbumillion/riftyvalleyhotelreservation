package com.app.hotelreservation.repository;

import com.app.hotelreservation.dto.EventDto;
import com.app.hotelreservation.entities.Event;
import com.app.hotelreservation.entities.Place;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface EventRepository extends JpaRepository<Event,Long> {
    EventDto findByEventDate(String eventDate);
    EventDto findByEventName(String eventName);
    EventDto findByEventPlace(Place place);
    void removeEventByName(String eventName);
    void removeEventByDate(String eventDate);
    void removeEventByPlace(String eventPlace);
}
