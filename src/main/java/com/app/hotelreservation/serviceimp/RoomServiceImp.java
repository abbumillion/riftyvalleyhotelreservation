package com.app.hotelreservation.serviceimp;

import com.app.hotelreservation.dto.HotelDto;
import com.app.hotelreservation.dto.RoomDto;
import com.app.hotelreservation.entities.Hotel;
import com.app.hotelreservation.entities.Room;
import com.app.hotelreservation.repository.RoomRepository;
import com.app.hotelreservation.services.RoomService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class RoomServiceImp implements RoomService {
    @Autowired
    private RoomRepository roomRepository;

    @Override
    public RoomDto getRoomById(Long roomId) {
        return null;
    }

    @Override
    public RoomDto getRoomByRoomNumber(String roomNumber) {
        return null;
    }

    @Override
    public List<RoomDto> getRoomsByStatus(String roomStatus) {
        return null;
    }

    @Override
    public List<RoomDto> getAllRooms() {
        return null;
    }

    @Override
    public List<RoomDto> getAllRooms(Hotel hotel) {
        return null;
    }

    @Override
    public void removeRoomById(Long roomId) {

    }

    @Override
    public void removeRoomByRoomNumber(String roomNumber) {

    }

    @Override
    public void removeAllRoomsByHotel(Hotel hotel) {

    }

    @Override
    public void removeAllRoomsByStatus(String roomStatus) {

    }

    @Override
    public RoomDto addRoom(Room room) {
        return null;
    }

    @Override
    public RoomDto updateRoom(Room roomId) {
        return null;
    }
}
