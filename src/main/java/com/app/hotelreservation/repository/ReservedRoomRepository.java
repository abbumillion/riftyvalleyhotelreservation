package com.app.hotelreservation.repository;

import com.app.hotelreservation.entities.ReservedRoom;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ReservedRoomRepository extends JpaRepository<ReservedRoom,Integer>{

}
