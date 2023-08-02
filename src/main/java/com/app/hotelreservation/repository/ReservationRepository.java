package com.app.hotelreservation.repository;

import com.app.hotelreservation.entities.Reservation;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ReservationRepository extends JpaRepository<Reservation,Integer> {
}
