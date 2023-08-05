package com.app.hotelreservation.entities;

import jakarta.persistence.*;
import lombok.*;

import java.util.Date;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
@Entity
@Table(name = "reservation")
public class Reservation {
    @Id
    private Long reservationId;
    @Column(name = "date_in" , length = 20 , updatable = false )
    private Date dateIn;
    @Column(name = "date_out" , length = 20 , updatable = false )
    private Date dateOut;
    @ManyToOne
    private Guest guest;
}
