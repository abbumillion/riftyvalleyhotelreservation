package com.app.hotelreservation.mapper;

import com.app.hotelreservation.dto.OccupiedRoomDto;
import com.app.hotelreservation.entities.OccupiedRoom;

public class OccupiedRoomMapper {
    public static OccupiedRoomDto OccupiedRoomToOccupiedRoomDto()
    {
        OccupiedRoomDto occupiedRoomDto = new OccupiedRoomDto();
        return occupiedRoomDto;
    }
    public static OccupiedRoom OccupiedRoomDtoToOccupiedRoom()
    {
        OccupiedRoom occupiedRoom = new OccupiedRoom();
        return occupiedRoom;
    }
}
