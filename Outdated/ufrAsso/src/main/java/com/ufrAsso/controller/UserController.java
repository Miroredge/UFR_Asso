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

/**
 * User controller.
 * 
 * @author Miroredge
 * @version 1.0
 */

@RestController
public class UserController {

    @Autowired
    private UserRepo userRepo;

    @GetMapping("api/v1/users") // Get all users of the application
    public ResponseEntity<List<User>> getAllUsers() {
        List<User> users = userRepo.findAll();
        return new ResponseEntity<>(users, HttpStatus.OK);
    }

    @PostMapping("api/v1/users") // Create a new user
    public ResponseEntity<String> createUser(@RequestBody User user) {
        // replace String by User
        // check if the user already exists
        if (userRepo.findByPseudo(user.getPseudo()).isPresent() || userRepo.findByEmail(user.getEmail()).isPresent()
                || userRepo.findByStudentNumber(user.getStudent_number()).isPresent()) {
            return new ResponseEntity<>("{\"error\":\"Pseudo or email or student number already exists\"}",
                    HttpStatus.BAD_REQUEST);
        }
        User newUser = userRepo.save(user);

        // response with a json format (pseudo studentNumber firstName lastName gender
        // profilePicture email phoneNumber phoneBook notification)
        String response = "{\"pseudo\":\"" + newUser.getPseudo() + "\",\"firstName\":\"" + newUser.getFirst_name()
                + "\",\"lastName\":\"" + newUser.getLast_name() + "\",\"email\":\"" + newUser.getEmail()
                + "\",\"phoneBook\":" + newUser.getPhone_book() + ",\"notification\":"
                + newUser.getNotification();
        if (newUser.getGender() != null) {
            response += ", \"gender\":\"" + newUser.getGender() + "\"";
        }
        if (newUser.getStudent_number() != null) {
            response += ", \"studentNumber\":\"" + newUser.getStudent_number() + "\"";
        }
        if (newUser.getProfile_picture() != null) {
            response += ", \"profilePicture\":\"" + newUser.getProfile_picture() + "\"";
        }
        if (newUser.getPhone_number() != null) {
            response += ", \"phoneNumber\":\"" + newUser.getPhone_number() + "\"";
        }
        response += "}";
        return new ResponseEntity<>((response), HttpStatus.CREATED);
        // return new ResponseEntity<>(newUser, HttpStatus.CREATED);
    }

    @GetMapping("api/users/{pseudo}") // Get a user by its pseudo
    public ResponseEntity<User> getUserById(@PathVariable("pseudo") long pseudo) {
        Optional<User> user = userRepo.findById(pseudo);
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
            // if (user.getFirst_name() != null) { TODO
            // _user.setFirst_name(user.getFirst_name());
            // }
            _user.setStudent_number(user.getStudent_number());
            _user.setProfile_picture(user.getProfile_picture());
            _user.setFirst_name(user.getFirst_name());
            _user.setLast_name(user.getLast_name());
            _user.setGender(user.getGender());
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
