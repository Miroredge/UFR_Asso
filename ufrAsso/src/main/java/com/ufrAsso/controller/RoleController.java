package com.ufrAsso.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.ufrAsso.entity.Role;
import com.ufrAsso.repo.RoleRepo;

@RestController
public class RoleController {

    @Autowired
    private RoleRepo roleRepo;

    @GetMapping("api/roles") // Get all roles of the table.
    public ResponseEntity<List<Role>> getAllRoles() {
        List<Role> roles = roleRepo.findAll();
        return new ResponseEntity<>(roles, HttpStatus.OK);
    }

    @PostMapping("api/roles") // Create a new role
    public ResponseEntity<Role> createRole(@RequestBody Role role) {
        Role newRole = roleRepo.save(role);
        return new ResponseEntity<>(newRole, HttpStatus.CREATED);
    }

}
