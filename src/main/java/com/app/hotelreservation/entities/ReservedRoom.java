package com.app.hotelreservation.entities;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Setter
@Getter
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name = "reservedroom")
public class ReservedRoom {
    @Id
    private int reservedRoomId;
    private int numberOfRooms;
    @ManyToOne
    private Reservation reservation;
}
