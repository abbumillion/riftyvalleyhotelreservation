package com.app.hotelreservation.services;

import com.app.hotelreservation.dto.AdminDto;
import com.app.hotelreservation.entities.Admin;

import java.util.List;

public interface AdminService {
    void addAdmin(Admin admin);
    void removeAdmin(Admin admin);
    void removeAdmin(Long adminId);
    AdminDto getAdmin(Long adminId);
    List<AdminDto> getAllAdmins();
}
