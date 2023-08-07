package com.app.hotelreservation.services;

import com.app.hotelreservation.dto.OccupiedRoomDto;
import com.app.hotelreservation.entities.OccupiedRoom;

import java.util.List;

public interface OccupiedRoomService {
    public OccupiedRoomDto getOccupiedRoomById(Long occupiedRoomId);
    public OccupiedRoomDto getOccupiedRoomByName(String name);
    public OccupiedRoomDto getOccupiedRoomByEmail(String email);
    public List<OccupiedRoomDto> getAllOccupiedRooms();
    public void removeOccupiedRoomById(long id);
    public void removeOccupiedRoomByName(String fullName);
    public void removeOccupiedRoomByEmail(String email);
    public OccupiedRoomDto addGuest(OccupiedRoom occupiedRoom);
    public OccupiedRoomDto updateGuest(OccupiedRoom occupiedRoom);
}
