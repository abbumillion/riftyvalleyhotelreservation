package com.app.hotelreservation.services;

import com.app.hotelreservation.dto.ReservationDto;
import com.app.hotelreservation.entities.Reservation;

import java.util.List;

public interface ReservationService {
    public ReservationDto getReservationById(long reservationId);
    public ReservationDto getReservationByName(String reservationName);
    public ReservationDto getReservationByEmail(String reservationEmail);
    public List<ReservationDto> getAllReservations();
    public void removeReservationById(Long reservationId);
    public void removeReservationByName(String reservationName);
    public void removeReservationByEmail(String reservationEmail);
    public ReservationDto addReservation(Reservation reservation);
    public ReservationDto updateReservation(Reservation reservation);
}
