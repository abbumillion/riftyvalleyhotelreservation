package com.app.hotelreservation.entities;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import java.util.List;

@AllArgsConstructor
@NoArgsConstructor
@Data
@Entity
@Table(name = "place")
public class Place {
    @Id
    private long placeId;
    @Column(name = "place name" , nullable = false , length = 100)
    private String placeName;
    @Column(name = "place coordinates" , nullable = false , length = 100)
    private String placeCoordinates;
    @Column(name = "place owner" , nullable = false , length = 100)
    private String placeOwner;
    @Column(name = "place images" , nullable = false , length = 100)
    private List<String> placeImageList;
}
