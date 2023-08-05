package com.app.hotelreservation.dto;

import com.app.hotelreservation.entities.Room;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class OccupiedRoomDto {
    private Long occupiedRoomId;
    private String checkIn;
    private String checkOut;
    private ReservationDto reservationDto;
    private RoomDto roomDto;
}
