package com.ufrAsso.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.ufrAsso.entity.User;
import com.ufrAsso.repo.UserRepo;

@RestController
public class UserController {

    @Autowired
    private UserRepo userRepo;

    @GetMapping("api/users") // Get all users of the application
    public ResponseEntity<List<User>> getAllUsers() {
        List<User> users = userRepo.findAll();
        return new ResponseEntity<>(users, HttpStatus.OK);
    }

    @PostMapping("api/users") // Create a new user
    public ResponseEntity<User> createUser(@RequestBody User user) {
        User newUser = userRepo.save(user);
        return new ResponseEntity<>(newUser, HttpStatus.CREATED);
    }
}
