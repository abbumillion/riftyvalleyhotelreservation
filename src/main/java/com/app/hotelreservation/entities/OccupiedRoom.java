package com.app.hotelreservation.entities;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.Date;

@Setter
@Getter
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name = "occupiedroom")
public class OccupiedRoom {
    @Id
    private int id;
    private Date checkIn;
    private Date checkout;
    @ManyToOne
    private Reservation reservation;
    @ManyToOne
    private Room room;
}
