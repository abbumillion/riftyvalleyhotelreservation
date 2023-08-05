package com.app.hotelreservation.repository;

import com.app.hotelreservation.entities.OccupiedRoom;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface OccupiedRoomRepository extends JpaRepository<OccupiedRoom,Long> {
}
