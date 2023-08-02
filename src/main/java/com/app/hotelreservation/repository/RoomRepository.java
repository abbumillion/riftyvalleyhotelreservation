package com.app.hotelreservation.repository;

import com.app.hotelreservation.entities.Room;
import org.springframework.data.jpa.repository.JpaRepository;

public interface RoomRepository extends JpaRepository<Room,Integer> {
}
