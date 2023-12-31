package com.app.hotelreservation.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import java.util.List;
@AllArgsConstructor
@NoArgsConstructor
@Data
@Builder
public class PlaceDto {
    private Long placeId;
    private String placeName;
    private String placeCoordinates;
    private String placeOwner;
    private List<String> placeImageList;
}
