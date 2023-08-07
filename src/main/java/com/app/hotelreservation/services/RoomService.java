package com.app.hotelreservation.services;

import com.app.hotelreservation.dto.HotelDto;
import com.app.hotelreservation.dto.RoomDto;
import com.app.hotelreservation.entities.Hotel;
import com.app.hotelreservation.entities.Room;

import java.util.List;

public interface RoomService {
    public RoomDto getRoomById(Long roomId);
    public RoomDto getRoomByRoomNumber(String roomNumber);
    public List<RoomDto> getRoomsByStatus(String roomStatus);
    public List<RoomDto> getAllRooms();
    public List<RoomDto> getAllRooms(Hotel hotel);
    public void removeRoomById(Long roomId);
    public void removeRoomByRoomNumber(String roomNumber);
    public void removeAllRoomsByHotel(Hotel hotel);
    public void removeAllRoomsByStatus(String roomStatus);
    public RoomDto addRoom(Room room);
    public RoomDto updateRoom(Room roomId);
}
