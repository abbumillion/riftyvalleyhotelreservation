package com.app.hotelreservation.security;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

@Configuration
public class PasswordEncoder {

    /**
     *
     * @return PASSWORD ENCODER CLASS USED FOR SECURITY CLASS
     * THIS CLASS RETURNS B-CRYPT PASSWORD ENCODER OBJECT FOR SECURITY INJECTION
     * IN TO SPRING SECURITY CORE
     * AUTHOR MILLION SHARBE
     * DATE JUL 20 , 2022
     */
    @Bean
    public BCryptPasswordEncoder bCryptPasswordEncoder()
    {
        /**
         * RETURNING NEW B CRYPT PASSWORD ENCODER
         * OBJECT FOR CALLER PROVIDED BY
         * SPRING WEB SECURITY CORE
         */
        return new BCryptPasswordEncoder();
    }
}
