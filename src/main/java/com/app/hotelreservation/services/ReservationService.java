package com.app.hotelreservation.services;

import com.app.hotelreservation.dto.Reservationdto;

import java.util.List;

public interface ReservationService {
    // get reservation by id
    public Reservationdto getReservationById(long reservationId);
    // get reservation by name
    public Reservationdto getReservationByName(String reservationName);
    // get a reservation by email
    public Reservationdto getReservationByEmail(String reservationEmail);
    // getting all reservations
    public List<Reservationdto> getAllReservations();
    // removing reservation by id
    public void removeReservationById(long reservationId);
    // removing reservation by name
    public void removeReservationByName(String reservationName);
    // removing reservation by email
    public void removeReservationByEmail(String reservationEmail);
    // adding reservation  to the system
    public Reservationdto addReservation(Reservationdto reservationdto);
    // updating reservation information
    public Reservationdto updateReservation(Reservationdto reservationdto);
}
