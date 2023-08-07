package com.app.hotelreservation.mapper;

import com.app.hotelreservation.dto.GuestDto;
import com.app.hotelreservation.dto.ReservationDto;
import com.app.hotelreservation.entities.Guest;
import com.app.hotelreservation.entities.Reservation;

public class ReservationMapper {
    public static ReservationDto ReservationToReservationDto()
    {
        ReservationDto reservationDto = new ReservationDto();
        return reservationDto;
    }
    public static Reservation ReservationDToToReservation()
    {
        Reservation reservation = new Reservation();
        return reservation;
    }
}
