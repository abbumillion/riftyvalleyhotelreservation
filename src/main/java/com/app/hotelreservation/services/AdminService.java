package com.app.hotelreservation.services;

import com.app.hotelreservation.dto.Admindto;

import java.util.List;

public interface AdminService {
    void addAdmin(Admindto admindto);
    void removeAdmin(Admindto admindto);
    void removeAdmin(long adminId);
    Admindto getAdmin(long adminId);
    List<Admindto> getAllAdmin();
}
