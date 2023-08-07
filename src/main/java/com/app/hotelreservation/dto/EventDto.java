package com.app.hotelreservation.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Data
@Builder
public class EventDto {
    private Long eventId;
    private String eventName;
    private PlaceDto placeDto;
    private String eventDate;
    private String eventTime;
    private String eventOrganizer;
    private String eventHoster;
}
