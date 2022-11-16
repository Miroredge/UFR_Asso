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

    @GetMapping("api/users/{id}") // Get a user by id
    public ResponseEntity<User> getUserById(@PathVariable("id") long id) {
        Optional<User> user = userRepo.findById(id);
        if (user.isPresent()) {
            return new ResponseEntity<>(user.get(), HttpStatus.OK);
        } else {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
    }

    @PutMapping("api/users/{id}") // Update a user by id
    public ResponseEntity<User> updateUser(@PathVariable("id") long id, @RequestBody User user) {
        Optional<User> userData = userRepo.findById(id);
        if (userData.isPresent()) {
            User _user = userData.get();
            _user.setStudent_number(user.getStudent_number());
            _user.setProfile_picture(user.getProfile_picture());
            _user.setFirst_name(user.getFirst_name());
            _user.setLast_name(user.getLast_name());
            _user.setSex(user.getSex());
            _user.setEmail(user.getEmail());
            _user.setPhone_number(user.getPhone_number());
            _user.setPhone_book(user.getPhone_book());
            _user.setPassword(user.getPassword());
            _user.setTemporary_password(user.getTemporary_password());
            _user.setNotification(user.getNotification());
            return new ResponseEntity<>(userRepo.save(_user), HttpStatus.OK);
        } else {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
    }

    @DeleteMapping("api/users/{id}") // Delete a user by id
    public ResponseEntity<HttpStatus> deleteUser(@PathVariable("id") long id) {
        try {
            userRepo.deleteById(id);
            return new ResponseEntity<>(HttpStatus.NO_CONTENT);
        } catch (Exception e) {
            return new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }

}
