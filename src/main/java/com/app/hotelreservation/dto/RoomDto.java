package com.app.hotelreservation.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class RoomDto {
    private Long roomId;
    private String roomNumber;
    private double pricePerNight;
    private String status;
    private boolean smoke;
    private String roomType;
}
