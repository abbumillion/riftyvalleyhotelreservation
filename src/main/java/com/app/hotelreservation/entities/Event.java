package com.app.hotelreservation.entities;

import com.app.hotelreservation.dto.PlaceDto;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Data
@Entity
@Table(name = "event")
public class Event {
    @Id
    private long eventId;
    @Column(name = "event name" , length = 100 , nullable = false)
    private String eventName;
    @Column(name = "event place" , length = 50 , nullable = false)
    private PlaceDto placeDto;
    @Column(name = "event date" , length = 20 , nullable = false)
    private String eventDate;
    @Column(name = "event time" , length = 20 , nullable = false)
    private String eventTime;
    @Column(name = "event organizer" , length = 50 , nullable = false)
    private String eventOrganizer;
    @Column(name = "event hoster" , length = 70 , nullable = false)
    private String eventHoster;
}
