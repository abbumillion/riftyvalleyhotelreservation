package com.app.hotelreservation.dto;

import com.app.hotelreservation.entities.Guest;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class ReservationDto {
    private Long reservationId;
    private String dateIn;
    private String dateOut;
    private Guest guest;
}
