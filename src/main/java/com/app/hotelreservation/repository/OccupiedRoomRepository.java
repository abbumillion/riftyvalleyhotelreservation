package com.app.hotelreservation.repository;

import com.app.hotelreservation.entities.OccupiedRoom;
import org.springframework.data.jpa.repository.JpaRepository;

public interface OccupiedRoomRepository extends JpaRepository<OccupiedRoom,Integer> {
}
