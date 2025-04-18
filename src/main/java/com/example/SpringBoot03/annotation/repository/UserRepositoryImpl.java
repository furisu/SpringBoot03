package com.example.SpringBoot03.annotation.repository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.example.SpringBoot03.annotation.repository.mapper.UserMapper;

@Repository
public class UserRepositoryImpl {

    private final UserMapper userMapper;  

    public UserRepositoryImpl(UserMapper userMapper) {
        this.userMapper = userMapper;
    }
    public int count() {

        return userMapper.count();
    }

}
