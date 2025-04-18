package com.example.SpringBoot03.annotation.repository.mapper;

import org.apache.ibatis.annotations.Mapper;

import java.time.LocalDateTime;

@Mapper
public interface UserMapper {

    int count();

    void create(String mail, String password, LocalDateTime time, String roles);
    void updateLastLogined(int id, LocalDateTime lastLogined);
    void updateEnabled(int id, boolean enabled);
    void delete(int id);
}
