package com.app.hotelreservation;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class HotelReservationApplication {
	public static void main(String[] args) {
		System.out.println("STARTING-WEB-APPLICATION");
		SpringApplication.run(HotelReservationApplication.class, args);
		System.out.println("STOPPING-WEB-APPLICATION");
	}

}
