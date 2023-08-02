package com.app.hotelreservation.entities;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.OneToOne;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Setter
@Getter
@AllArgsConstructor
@NoArgsConstructor
@Entity
public class ReservedRoom {
    @Id
    private int reservedRoomId;
    private int numberOfRooms;
    @ManyToOne
    private Reservation reservation;
}
