package com.app.hotelreservation.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class GuestDto {
    private Long guestId;
    private String firstName;
    private String lastName;
    private Date memberSince;
}
