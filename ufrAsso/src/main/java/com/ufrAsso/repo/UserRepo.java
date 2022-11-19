package com.ufrAsso.repo;

import org.springframework.data.jpa.repository.JpaRepository;

import com.ufrAsso.entity.User;

/**
 * User repository.
 * 
 * @author Miroredge
 * @version 1.0
 */

public interface UserRepo extends JpaRepository<User, Long> {

}
