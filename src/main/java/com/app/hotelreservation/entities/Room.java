package com.app.hotelreservation.entities;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name = "room")
public class Room {
    @Id
    private Long roomId;
    @Column(nullable = false,length = 20)
    private String roomNumber;
    @Column(nullable = false,length = 20)
    private double pricePerNight;
    @Column(nullable = false,length = 20)
    private  String status;
    @OneToOne
    private RoomType roomType;
}
