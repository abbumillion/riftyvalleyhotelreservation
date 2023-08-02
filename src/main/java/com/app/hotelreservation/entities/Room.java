package com.app.hotelreservation.entities;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.springframework.data.annotation.Reference;

@Setter
@Getter
@AllArgsConstructor
@NoArgsConstructor
@Entity
public class Room {
    @Id
    private int id;
    @Column(nullable = false,length = 20)
    private String number;
    @Column(nullable = false,length = 20)
    private String name;
    @Column(nullable = false,length = 20)
    private  String status;
    @Column(nullable = false,length = 20)
    private boolean smoke;
    @OneToOne
    private RoomType roomType;
}
