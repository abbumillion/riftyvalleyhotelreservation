package com.app.hotelreservation.entities;

import jakarta.persistence.*;
import lombok.*;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import java.util.Collection;
import java.util.Collections;

/**
 * CLASS ANNOTATION
 */
@Entity
/**
 * DATA ANNOTATION FOR GETTER AND SETTER
 * METHODS
 */
@Data
/**
 * ALL ARGUMENT CONSTRUCTOR
 */
@AllArgsConstructor
/**
 * NO ARGUMENT CONSTRUCTOR
 */
@NoArgsConstructor
/**
 * BUILDER PATTERN
 */
@Builder
@Table(name = "user")
public class User implements UserDetails
/**
 * USER CLASS BEAN
 * DEFINITION FOR ALL APPLICATION USERS
 * INCLUDE ADMIN , CUSTOMER ,FREELANCER
 * USED FOR AUTHENTICATION AND HOLDING PERSONAL
 * INFORMATION LIKE FULL NAME EMAIL PASSWORD
 * PHONE NUMBER TO CHECK IF IT'S ACTIVE
 * IMPLEMENTS USER DETAILS CLASS FOR INJECTING
 * IN TO SPRING SECURITY
 * AUTHOR MILLION SHARBE SOKORA
 * DATE APR 2, 2022
 */
{
    /**
     * ID PRIMARY KEY
     */
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Long id;
    /**
     * COLUMN FULL NAME
     */
    @Column(name = "fullName")
    private String fullName;
    /**
     * COLUMN PHONE NUMBER
     */
    @Column(name = "phoneNumber", unique = true, length = 30)
    private String phoneNumber;
    /**
     * COLUMN EMAIL
     */
    @Column(name = "email", unique = true, length = 200)
    private String email;
    /**
     * COLUMN PASSWORD
     */
    @Column(name = "password", length = 200)
    private String password;
    /**
     * COLUMN ROLE
     */
    @Column(name = "role")
    private String role;
    /**
     * COLUMN IS ACTIVE
     */
    @Column(name = "isActive")
    private boolean isActive;

    /**
     * @return all roles for authorities
     */
    @Override
    public Collection<? extends GrantedAuthority> getAuthorities() {
        /**
         * this collection holds all roles found in the system
         *
         */
        SimpleGrantedAuthority simpleGrantedAuthority =
                new SimpleGrantedAuthority(ROLE.values().toString());
        return Collections.singletonList(simpleGrantedAuthority);
    }

    /**
     * for authenticating user
     *
     * @return email
     */
    @Override
    public String getUsername() {
        return email;
    }

    /**
     * @return boolean
     */
    @Override
    public boolean isAccountNonExpired() {
        return true;
    }

    /**
     * @return if user account has been blocked
     */
    @Override
    public boolean isAccountNonLocked() {
        return true;
    }

    /**
     * @return checks if the user credentials are not expired
     */
    @Override
    public boolean isCredentialsNonExpired() {
        return true;
    }

    /**
     * @return
     */
    @Override
    public boolean isEnabled() {
        return true;
    }

}