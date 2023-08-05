package com.app.hotelreservation.services;

import com.app.hotelreservation.dto.Guestdto;
import com.app.hotelreservation.dto.Hoteldto;
import com.app.hotelreservation.dto.Roomdto;

import java.util.List;

public interface RoomService {
    public Roomdto getRoomById(long roomId);
    public Roomdto getRoomByRoomNumber(String roomNumber);
    public List<Roomdto> getRoomsByStatus(String status);
    public List<Roomdto> getAllRooms();
    public List<Roomdto> getAllRooms(Hoteldto hoteldto);
    public void removeRoomById(long roomId);
    public void removeRoomByRoomNumber(String roomNumber);
    public void removeAllRoomsByHotel(Hoteldto hoteldto);
    public void removeAllRoomsByStatus(String status);
    public Roomdto addRoom(Roomdto roomdto);
    public Roomdto updateRoom(Roomdto roomdto);
}
