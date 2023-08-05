package com.app.hotelreservation.services;

import com.app.hotelreservation.dto.AdminDto;
import java.util.List;

public interface AdminService {
    void addAdmin(AdminDto adminDto);
    void removeAdmin(AdminDto adminDto);
    void removeAdmin(long adminId);
    AdminDto getAdmin(long adminId);
    List<AdminDto> getAllAdmin();
}
