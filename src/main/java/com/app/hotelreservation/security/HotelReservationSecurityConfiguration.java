package com.app.hotelreservation.security;

import org.springframework.context.annotation.Bean;
import org.springframework.security.config.Customizer;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.web.SecurityFilterChain;

@EnableWebSecurity
public class HotelReservationSecurityConfiguration {
    @Bean
    public SecurityFilterChain configure(HttpSecurity httpSecurity) throws Exception {
        return httpSecurity
                .csrf(csrf->
                    csrf.disable())
                .authorizeHttpRequests(auth -> {
                            auth.anyRequest().permitAll();
                            auth.requestMatchers("/").permitAll();
                            auth.requestMatchers("/guest").hasRole("GUEST");
                            auth.requestMatchers("/admin").hasRole("ADMIN");
                            auth.requestMatchers("/hotel").hasRole("HOTEL");
                        }
                )
                .httpBasic(Customizer.withDefaults())
                .build();
    }
}
