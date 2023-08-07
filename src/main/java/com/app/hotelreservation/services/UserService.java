package com.app.hotelreservation.services;
import com.app.hotelreservation.dto.UserDto;
import com.app.hotelreservation.entities.User;
import org.springframework.security.core.userdetails.UserDetailsService;
import java.util.List;

public interface UserService extends UserDetailsService {
    public UserDto getUserById(long id);
    public UserDto getUserByName(String name);
    public UserDto getUserByEmail(String email);
    public List<UserDto> getAllUsers();
    public boolean removeAllUsers();
    public void removeUserById(Long userId);
    public void removeUser(User user);
    public void removeUserByName(String userFullName);
    public void removeUserByEmail(String userEmail);
    public UserDto addUser(User user);
    public UserDto updateUser(User user);
}
