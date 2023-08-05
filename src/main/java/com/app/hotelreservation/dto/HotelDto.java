package com.app.hotelreservation.dto;

import com.app.hotelreservation.entities.Room;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;
@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class HotelDto {
    private Long hotelId;
    private String hotelName;
    private int star;
    private List<Room> roomList;
}
