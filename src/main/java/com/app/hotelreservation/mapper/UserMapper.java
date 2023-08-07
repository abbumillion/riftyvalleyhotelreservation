package com.app.hotelreservation.mapper;

import com.app.hotelreservation.dto.UserDto;
import com.app.hotelreservation.entities.User;

public class UserMapper {
    public static UserDto UserToUserDto()
    {
        UserDto userDto = new UserDto();
        return userDto;
    }
    public static User UserDToToUser()
    {
        User user = new User();
        return user;
    }
}
