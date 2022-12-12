package com.ufrAsso.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.ufrAsso.entity.Event;
import com.ufrAsso.repo.EventRepo;

/**
 * Event controller.
 * 
 * @author Miroredge
 * @version 1.0
 */

@RestController
public class EventController {

    @Autowired
    private EventRepo eventRepo;

    @GetMapping("api/v1/events") // Get all events of the table.
    public ResponseEntity<List<Event>> getAllEvents() {
        List<Event> events = eventRepo.findAll();
        return new ResponseEntity<>(events, HttpStatus.OK);
    }

    // TODO
    // Long nextUserId = userRepo.getNextUserId().orElse(0L);

    // String userId = Long.toString(nextUserId, 36);
    // user.setUser_id(userId);
}
