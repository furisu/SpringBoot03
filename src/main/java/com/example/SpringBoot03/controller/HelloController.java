package com.example.SpringBoot03.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import com.example.SpringBoot03.annotation.repository.UserRepositoryImpl;

@RestController
public class HelloController {

    @Autowired
    private UserRepositoryImpl userRepositoryImpl;

    @GetMapping("/")
    public String top() {
        int count = userRepositoryImpl.count();
        return "ユーザ数：" + count + "人";
    }

}
