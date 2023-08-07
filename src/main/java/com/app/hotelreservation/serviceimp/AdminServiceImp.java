package com.app.hotelreservation.serviceimp;

import com.app.hotelreservation.dto.AdminDto;
import com.app.hotelreservation.entities.Admin;
import com.app.hotelreservation.services.AdminService;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class AdminServiceImp implements AdminService {

    @Override
    public void addAdmin(Admin admin) {

    }

    @Override
    public void removeAdmin(Admin admin) {

    }

    @Override
    public void removeAdmin(Long adminId) {

    }

    @Override
    public AdminDto getAdmin(Long adminId) {
        return null;
    }

    @Override
    public List<AdminDto> getAllAdmins() {
        return null;
    }
}
