package com.app.hotelreservation.serviceimp;

import com.app.hotelreservation.dto.UserDto;
import com.app.hotelreservation.entities.User;
import com.app.hotelreservation.services.UserService;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserServiceImp implements UserService {
    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        return null;
    }

    @Override
    public UserDto getUserById(long id) {
        return null;
    }

    @Override
    public UserDto getUserByName(String name) {
        return null;
    }

    @Override
    public UserDto getUserByEmail(String email) {
        return null;
    }

    @Override
    public List<UserDto> getAllUsers() {
        return null;
    }

    @Override
    public boolean removeAllUsers() {
        return false;
    }

    @Override
    public void removeUserById(Long userId) {

    }

    @Override
    public void removeUser(User user) {

    }

    @Override
    public void removeUserByName(String userFullName) {

    }

    @Override
    public void removeUserByEmail(String userEmail) {

    }

    @Override
    public UserDto addUser(User user) {
        return null;
    }

    @Override
    public UserDto updateUser(User user) {
        return null;
    }
}
