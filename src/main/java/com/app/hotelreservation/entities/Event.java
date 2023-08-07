package com.app.hotelreservation.entities;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

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
    @OneToMany
    private List<Place> place;
    @Column(name = "event date" , length = 20 , nullable = false)
    private String eventDate;
    @Column(name = "event time" , length = 20 , nullable = false)
    private String eventTime;
    @Column(name = "event organizer" , length = 50 , nullable = false)
    private String eventOrganizer;
    @Column(name = "event hoster" , length = 70 , nullable = false)
    private String eventHoster;
}
