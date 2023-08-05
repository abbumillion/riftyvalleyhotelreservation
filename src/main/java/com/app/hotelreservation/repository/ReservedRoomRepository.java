package com.app.hotelreservation.repository;

import com.app.hotelreservation.entities.ReservedRoom;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ReservedRoomRepository extends JpaRepository<ReservedRoom,Integer>{

}
