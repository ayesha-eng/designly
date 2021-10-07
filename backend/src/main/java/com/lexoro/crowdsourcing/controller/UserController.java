package com.lexoro.crowdsourcing.controller;

import com.lexoro.crowdsourcing.models.UserInfo;
import com.lexoro.crowdsourcing.models.UserLogin;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("api/users")
public class UserController {

    @PostMapping("/register")
    public UserInfo signup(@RequestBody UserInfo userInfo){
       return null;
    }

    @PostMapping("/login")
    public UserLogin login(@RequestBody UserLogin userLogin){
      return null;
    }

    @GetMapping("/{id}")
    public UserInfo getUserInfo(@PathVariable int id){
        return null;
    }

    @GetMapping("/")
    public  UserInfo getAllUserInfo(){
        return null;
    }

    @PutMapping("/edit")
    public UserInfo editUserInfo(@RequestBody UserInfo userInfo){
        return null;
    }

    @DeleteMapping("/{id}")
    public UserInfo deleteUserInfo(@PathVariable int id){
        return  null;
    }





}
