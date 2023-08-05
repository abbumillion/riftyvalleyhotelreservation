package com.app.hotelreservation.entities;

import jakarta.persistence.*;
import lombok.*;

import java.util.Date;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Builder
@Table(name = "occupied room")
public class OccupiedRoom {
    @Id
    private Long longId;
    @Column(name = "checkIn" , length = 20 , updatable = false , nullable = false)
    private Date checkIn;
    @Column(name = "checkOut" , length = 20 , updatable = false )
    private Date checkout;
    @ManyToOne
    private Reservation reservation;
    @OneToOne
    private Room room;
}
