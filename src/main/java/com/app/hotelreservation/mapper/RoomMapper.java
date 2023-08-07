package com.app.hotelreservation.mapper;

import com.app.hotelreservation.dto.RoomDto;
import com.app.hotelreservation.entities.Room;

public class RoomMapper {
    public static RoomDto RoomToRoomDto()
    {
        RoomDto roomDto = new RoomDto();
        return roomDto;
    }
    public static Room RoomDToToRoom()
    {
        Room room = new Room();
        return room;
    }
}
