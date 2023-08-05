package com.app.hotelreservation.repository;

import com.app.hotelreservation.entities.Place;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface PlaceRepository extends JpaRepository < Place , Long > {
}
