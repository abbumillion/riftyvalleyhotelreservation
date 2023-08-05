package com.app.hotelreservation.dto;

import jakarta.persistence.Entity;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class EventDto {
    private long eventId;
    private String eventName;
    private PlaceDto placeDto;
    private String eventDate;
    private String eventTime;
    private String eventOrganizer;
    private String eventHoster;
}
