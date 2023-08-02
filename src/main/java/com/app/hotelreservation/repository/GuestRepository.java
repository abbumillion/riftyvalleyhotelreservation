package com.app.hotelreservation.repository;

import com.app.hotelreservation.entities.Guest;
import org.springframework.data.jpa.repository.JpaRepository;

public interface GuestRepository extends JpaRepository<Guest,Integer> {
}
