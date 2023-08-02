package com.app.hotelreservation.repository;

import com.app.hotelreservation.entities.Admin;
import org.springframework.data.jpa.repository.JpaRepository;

public interface AdminRepository extends JpaRepository<Admin,Integer> {
}
