package com.app.hotelreservation.entities;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Setter
@Getter
@AllArgsConstructor
@NoArgsConstructor
@Entity
public class Admin {
    @Id
    private int adminId;
    @Column(nullable = false,length = 50)
    private String firstName;
    @Column(nullable = false,length = 50)
    private String lastName;
    @Column(nullable = false , length = 100,updatable = true)
    private String securityQuestion;
}
