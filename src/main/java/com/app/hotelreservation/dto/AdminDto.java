package com.app.hotelreservation.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class AdminDto {
    private Long adminId;
    private String firstName;
    private String lastName;
    private String securityQuestion;
    private String adminLevel;
}
